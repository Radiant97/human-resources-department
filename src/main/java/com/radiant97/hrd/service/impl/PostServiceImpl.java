package com.radiant97.hrd.service.impl;

import com.radiant97.hrd.dao.PostRepository;
import com.radiant97.hrd.service.PostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PostServiceImpl  implements PostService {

    @Autowired
    PostRepository postRepository;
}
