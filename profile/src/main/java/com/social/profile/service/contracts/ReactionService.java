package com.social.profile.service.contracts;

public interface ReactionService {
    void likePost(String reactingUserIdentity, String postIdentity, String postAuthorIdentity);

    void dislikePost(String reactingUserIdentity, String postIdentity, String postAuthorIdentity);
}
