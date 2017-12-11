package com.radiant97.hrd.web;

import com.radiant97.hrd.dao.PostRepository;
import com.radiant97.hrd.entity.Post;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @Autowired
    private PostRepository userRepository;

    @RequestMapping(value = "")
    public ResponseEntity<Post> getUser() {
        return new ResponseEntity<>(userRepository.findOne(1), HttpStatus.OK);
    }
}
