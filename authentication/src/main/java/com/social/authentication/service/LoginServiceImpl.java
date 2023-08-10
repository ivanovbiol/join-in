package com.social.authentication.service;

import com.social.authentication.model.Log;
import com.social.authentication.model.User;
import com.social.authentication.repository.LogRepository;
import com.social.authentication.repository.UserRepository;
import com.social.authentication.service.contract.KafkaMessageSender;
import com.social.authentication.service.contract.LoginService;
import com.social.authentication.service.contract.PasswordEncoder;
import com.social.kafka.messages.UserLogin;
import com.social.kafka.messages.contract.KafkaMessage;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.UUID;

import static com.social.authentication.service.constants.ExceptionConstants.BAD_CREDENTIALS;
import static com.social.authentication.service.constants.LoggerConstants.*;

@Service
@Slf4j
public class LoginServiceImpl implements LoginService {

    private final LogRepository logRepository;
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;
    private final KafkaMessageSender kafkaMessageSender;
    private String userLoginTopic;

    public LoginServiceImpl(LogRepository logRepository,
                            UserRepository userRepository,
                            PasswordEncoder passwordEncoder,
                            KafkaMessageSender kafkaMessageSender,
                            @Value("${spring.kafka.topic.name.user.login}") String userLoginTopic) {
        this.logRepository = logRepository;
        this.userRepository = userRepository;
        this.passwordEncoder = passwordEncoder;
        this.kafkaMessageSender = kafkaMessageSender;
        this.userLoginTopic = userLoginTopic;
    }

    @Override
    public String login(String email, String password) {
        User loggedUser = userRepository.findByEmail(email);

        if (loggedUser == null || !passwordEncoder.areEqual(password, loggedUser.getPassword())) {
            log.error(FAILED_TO_AUTHENTICATE_WITH_CREDENTIALS);
            throw new IllegalArgumentException(BAD_CREDENTIALS);
        }

        log.info(String.format(USER_WITH_IDENTITY_LOGGED_TEMPLATE, loggedUser.getIdentity()));

        Log loggedUserLog = Log.builder().id(UUID.randomUUID().toString()).user(loggedUser).logDate(LocalDate.now()).build();
        logRepository.save(loggedUserLog);
        log.info(String.format(USER_WITH_IDENTITY_LOGIN_SAVED_IN_DATABASE_TEMPLATE, loggedUser.getIdentity()));

        KafkaMessage userLogin = UserLogin.builder().identity(loggedUser.getIdentity()).build();
        kafkaMessageSender.send(userLogin, userLoginTopic);

        return loggedUser.getIdentity();
    }
}
