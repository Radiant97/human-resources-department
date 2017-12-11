package com.radiant97.hrd.service.impl;

import com.radiant97.hrd.dao.EstablishedPostRepository;
import com.radiant97.hrd.entity.EstablishedPost;
import com.radiant97.hrd.service.EstablishedPostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EstablishedPostServiceImpl implements EstablishedPostService {

    @Autowired
    EstablishedPostRepository establishedPostRepository;

    @Override
    public List<EstablishedPost> getAllEstablishedPosts() {
        return (List<EstablishedPost>) establishedPostRepository.findAll();
    }

    @Override
    public EstablishedPost getEstablishPostById(int id) {
        return establishedPostRepository.findOne(id);
    }
}
