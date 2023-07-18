package com.social.post.repository.contract;

import java.util.List;

public interface ImageRepository {
    String findProfileImage(String collection);

    String findProfileBackgroundImage(String collection);

    List<String> findProfileAlbumImage(String collection);
}
