package com.social.reaction.service;

import com.social.kafka.messages.DeleteNodesMessage;
import com.social.kafka.messages.NewNodeMessage;
import com.social.kafka.messages.NewUserMessage;
import com.social.kafka.messages.ReactionMessage;
import com.social.kafka.messages.contract.KafkaMessage;
import com.social.reaction.model.Comment;
import com.social.reaction.model.Post;
import com.social.reaction.model.Profile;
import com.social.reaction.service.contracts.CommentService;
import com.social.reaction.service.contracts.PostService;
import com.social.reaction.service.contracts.ProfileService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.kafka.annotation.KafkaListener;
import org.springframework.stereotype.Service;

import static com.social.reaction.service.constants.LoggerConstants.*;

@Service
@Slf4j
public class ReactionListener {

    private final ProfileService profileService;
    private final PostService postService;
    private final CommentService commentService;
    private final String newUserTopic;
    private final String newPostNodeTopic;
    private final String newCommentNodeTopic;
    private final String deleteNodesTopic;
    private final String likePostTopic;

    public ReactionListener(ProfileService profileService,
                            PostService postService,
                            CommentService commentService,
                            @Value("${spring.kafka.topic.name.new.user}") String newUserTopic,
                            @Value("${spring.kafka.topic.name.new.post.node}") String newPostNodeTopic,
                            @Value("${spring.kafka.topic.name.new.comment.node}") String newCommentNodeTopic,
                            @Value("${spring.kafka.topic.name.delete.nodes}") String deleteNodesTopic,
                            @Value("${spring.kafka.topic.name.like.post}") String likePostTopic) {
        this.profileService = profileService;
        this.postService = postService;
        this.commentService = commentService;
        this.newUserTopic = newUserTopic;
        this.newPostNodeTopic = newPostNodeTopic;
        this.newCommentNodeTopic = newCommentNodeTopic;
        this.deleteNodesTopic = deleteNodesTopic;
        this.likePostTopic = likePostTopic;
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
        NewNodeMessage newNodeMessage = (NewNodeMessage) kafkaMessage;
        log.info(String.format(NEW_POST_NODE_RECEIVED_FROM_POST_SERVICE_TEMPLATE,
                newPostNodeTopic, newNodeMessage.getIdentity()));

        Post post = Post.builder().identity(newNodeMessage.getIdentity()).build();
        postService.save(post);
    }

    @KafkaListener(topics = "${spring.kafka.topic.name.new.comment.node}", groupId = "${spring.kafka.group.id}")
    public void newCommentNodeListener(KafkaMessage kafkaMessage) {
        NewNodeMessage newNodeMessage = (NewNodeMessage) kafkaMessage;
        log.info(String.format(NEW_COMMENT_NODE_RECEIVED_FROM_POST_SERVICE_TEMPLATE,
                newCommentNodeTopic, newNodeMessage.getIdentity()));

        Comment comment = Comment.builder().identity(newNodeMessage.getIdentity()).build();
        commentService.save(comment);
    }

    @KafkaListener(topics = "${spring.kafka.topic.name.delete.nodes}", groupId = "${spring.kafka.group.id}")
    public void deleteNodesListener(KafkaMessage kafkaMessage) {
        DeleteNodesMessage deleteNodesMessage = (DeleteNodesMessage) kafkaMessage;
        log.info(String.format(DELETE_NODES_RECEIVED_FROM_POST_SERVICE_TEMPLATE, deleteNodesTopic));

        commentService.deleteNodes(deleteNodesMessage.getCommentsNodesIdentities());
        postService.deleteNode(deleteNodesMessage.getPostIdentity());
    }

    @KafkaListener(topics = "${spring.kafka.topic.name.like.post}", groupId = "${spring.kafka.group.id}")
    public void likePostListener(KafkaMessage kafkaMessage) {
        ReactionMessage reactionMessage = (ReactionMessage) kafkaMessage;
        log.info(String.format(LIKE_POST_RECEIVED_FROM_PROFILE_SERVICE_TEMPLATE,
                likePostTopic, reactionMessage.getPostIdentity()));

        postService.likePost(reactionMessage.getUserIdentity(), reactionMessage.getPostIdentity());
    }
}
