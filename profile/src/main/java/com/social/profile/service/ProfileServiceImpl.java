package com.social.profile.service;

import com.social.profile.model.Profile;
import com.social.profile.model.dto.PostDto;
import com.social.profile.repository.contract.ProfileRepository;
import com.social.profile.service.contracts.ProfileService;
import com.social.profile.service.feign.ReactionClient;
import com.social.profile.service.feign.PostClient;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.Period;
import java.util.List;

import static com.social.profile.service.constants.ServiceConstants.*;

@Service
public class ProfileServiceImpl implements ProfileService {

    private final ProfileRepository profileRepository;
    private final PostClient postClient;
    private final ReactionClient reactionClient;

    public ProfileServiceImpl(ProfileRepository profileRepository,
                              PostClient postClient,
                              ReactionClient reactionClient) {
        this.profileRepository = profileRepository;
        this.postClient = postClient;
        this.reactionClient = reactionClient;
    }

    @Override
    public Profile findByIdentity(String identity) {
        return profileRepository.findByIdentity(identity);
    }

    @Override
    public Profile save(Profile profile) {
        return profileRepository.save(profile);
    }

    @Override
    public List<PostDto> findAllPosts(String identity) {
        List<PostDto> posts = postClient.findAllPostsByAuthorIdentity(identity);
        posts.forEach(post -> {
            Profile profile = profileRepository.findByIdentity(post.getAuthorIdentity());
            post.setAuthor(String.format(AUTHOR_NAME_TEMPLATE, profile.getFirstName(), profile.getLastName()));
            post.setAuthorPhoto(profile.getProfileImage());

            int likes = reactionClient.findLikesAPostProfileCount(post.getPostIdentity());
            post.setLikes(likes);

            int dislikes = reactionClient.findDislikesAPostProfileCount(post.getPostIdentity());
            post.setDislikes(dislikes);

            int stars = reactionClient.findStarsAPostProfileCount(post.getPostIdentity());
            post.setStars(stars);

        });
        posts.forEach(this::calculatePostedAgo);
        return posts;
    }

    @Override
    public int findUserPostsCount(String identity) {
        return postClient.findAuthorPostsCount(identity);
    }

    private void calculatePostedAgo(PostDto postDto) {
        LocalDate now = LocalDate.now();

        if (now.isAfter(postDto.getPostDate().plusYears(1))) {
            if (now.isBefore(postDto.getPostDate().plusYears(2))) {
                postDto.setPostedAgo(ONE_YEAR_AGO);
                return;
            }

            Period period = Period.between(postDto.getPostDate(), now);
            int years = period.getYears();
            postDto.setPostedAgo(String.format(SEVERAL_YEARS_AGO_TEMPLATE, years));
        } else if (now.isAfter(postDto.getPostDate().plusMonths(1))) {
            if (now.isBefore(postDto.getPostDate().plusMonths(2))) {
                postDto.setPostedAgo(ONE_MONTH_AGO);
                return;
            }

            Period period = Period.between(postDto.getPostDate(), now);
            int months = period.getMonths();
            postDto.setPostedAgo(String.format(SEVERAL_MONTHS_AGO_TEMPLATE, months));
        } else {
            if (now.isBefore(postDto.getPostDate().plusDays(2))) {
                postDto.setPostedAgo(ONE_DAY_AGO);
                return;
            }

            Period period = Period.between(postDto.getPostDate(), now);
            int days = period.getDays();
            postDto.setPostedAgo(String.format(SEVERAL_DAYS_AGO_TEMPLATE, days));
        }
    }
}
