package com.social.reaction.service.contracts;

import com.social.reaction.model.Comment;

import java.util.Set;

public interface CommentService {
    void save(Comment comment);

    void deleteNodes(Set<String> commentsNodesIdentities);
}
