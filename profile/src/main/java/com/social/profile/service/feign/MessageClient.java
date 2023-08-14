package com.social.profile.service.feign;

import com.social.profile.model.DirectChat;
import com.social.profile.model.OnlineFriend;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Set;

@FeignClient(name = "${message.service.feign.client.name}", url = "${message.service.url}")
public interface MessageClient {

    @PostMapping("${friends.online}")
    Set<OnlineFriend> findUserOnlineFriends(@RequestParam("identity") String identity);

    @PostMapping("${direct.chat.history}")
    List<DirectChat> findUserDirectChatHistory(@RequestParam("identity") String identity);
}
