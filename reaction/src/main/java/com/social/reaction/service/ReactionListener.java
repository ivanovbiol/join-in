package com.social.reaction.service;

import com.social.kafka.messages.NewPostNodeMessage;
import com.social.kafka.messages.NewUserMessage;
import com.social.kafka.messages.contract.KafkaMessage;
import com.social.reaction.model.Post;
import com.social.reaction.model.Profile;
import com.social.reaction.service.contracts.PostService;
import com.social.reaction.service.contracts.ProfileService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

import static com.social.reaction.service.constants.LoggerConstants.NEW_POST_NODE_RECEIVED_FROM_POST_SERVICE_TEMPLATE;
import static com.social.reaction.service.constants.LoggerConstants.NEW_USER_MESSAGE_RECEIVED_FROM_AUTHENTICATION_SERVICE_TEMPLATE;

@Service
@Slf4j
public class ReactionListener {

    private final ProfileService profileService;
    private final PostService postService;
    private final String newUserTopic;
    private final String newPostNodeTopic;

    public ReactionListener(ProfileService profileService,
                            PostService postService,
                            @Value("${spring.kafka.topic.name.new.user}") String newUserTopic,
                            @Value("${spring.kafka.topic.name.new.post.node}") String newPostNodeTopic) {
        this.profileService = profileService;
        this.postService = postService;
        this.newUserTopic = newUserTopic;
        this.newPostNodeTopic = newPostNodeTopic;
    }

    @KafkaListener(topics = "${spring.kafka.topic.name.new.user}", groupId = "${spring.kafka.group.id}")
    public void newUserListener(KafkaMessage kafkaMessage) {
        NewUserMessage newUserMessage = (NewUserMessage) kafkaMessage;
        log.info(String.format(NEW_USER_MESSAGE_RECEIVED_FROM_AUTHENTICATION_SERVICE_TEMPLATE,
                newUserTopic, newUserMessage.getIdentity()));

        Profile profile = Profile.builder().identity(newUserMessage.getIdentity()).build();

        profileService.save(profile);
    }

    @KafkaListener(topics = "${spring.kafka.topic.name.new.post.node}", groupId = "${spring.kafka.group.id}")
    public void newPostNodeListener(KafkaMessage kafkaMessage) {
        NewPostNodeMessage newPostNodeMessage = (NewPostNodeMessage) kafkaMessage;
        log.info(String.format(NEW_POST_NODE_RECEIVED_FROM_POST_SERVICE_TEMPLATE,
                newPostNodeTopic, newPostNodeMessage.getPostIdentity()));

        Post post = Post.builder().identity(newPostNodeMessage.getPostIdentity()).build();
        postService.save(post);
    }
}
