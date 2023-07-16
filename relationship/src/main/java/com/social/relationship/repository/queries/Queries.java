package com.social.relationship.repository.queries;

public class Queries {

    public static final String FIND_THE_FRIENDS_FOR_A_PROFILE_BY_PROFILE_IDENTITY_TEMPLATE =
            "MATCH (p:Profile)-[:FRIEND]->(friend:Profile) WHERE p.identity = $identity RETURN friend";

    private Queries() {
    }
}
