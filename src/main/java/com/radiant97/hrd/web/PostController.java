package com.radiant97.hrd.web;


import com.radiant97.hrd.entity.EstablishedPost;
import com.radiant97.hrd.service.EstablishedPostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class PostController {

    @Autowired
    private EstablishedPostService establishedPostService;

    @RequestMapping(value = "/v1/establishedPosts")
    public ResponseEntity<List<EstablishedPost>> getEstablishedPosts() {
        return new ResponseEntity<>(establishedPostService.getAllEstablishedPosts(), HttpStatus.OK);
    }

    @RequestMapping(value = "/v1/establishedPost/{id}")
    public ResponseEntity<EstablishedPost> getEstablishedPostById(@PathVariable("id") Integer id) {
        return new ResponseEntity<>(establishedPostService.getEstablishPostById(id), HttpStatus.OK);
    }
}
