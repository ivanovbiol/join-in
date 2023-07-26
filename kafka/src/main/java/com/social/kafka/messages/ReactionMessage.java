package com.social.kafka.messages;

import com.social.kafka.messages.contract.KafkaMessage;
import lombok.*;

@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class ReactionMessage implements KafkaMessage {

    private String reactingUserIdentity;

    private String postIdentity;

    private String postAuthorIdentity;
}
