package com.social.message.service.contract;

import com.social.message.model.DirectChat;
import com.social.message.model.User;

import java.time.LocalDate;
import java.util.List;
import java.util.Set;

public interface MessageService {
    Set<User> findUserOnlineFriends(String identity);

    void userIsOnline(String identity);

    void userIsOffline(String identity);

    List<DirectChat> findUserDirectChatHistory(String identity);

    void saveMessage(String chatIdentity, String senderIdentity, String messageContent, LocalDate date);
}
