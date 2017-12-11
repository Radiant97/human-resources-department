package com.radiant97.hrd.service;

import com.radiant97.hrd.entity.EstablishedPost;

import java.util.List;

public interface EstablishedPostService {
    List<EstablishedPost> getAllEstablishedPosts();
    EstablishedPost getEstablishPostById(int id);
}
