package com.radiant97.hrd.web;


import com.radiant97.hrd.entity.EstablishedPost;
import com.radiant97.hrd.entity.Post;
import com.radiant97.hrd.service.EstablishedPostService;
import com.radiant97.hrd.service.PostService;
import com.radiant97.hrd.service.UnitService;
import com.radiant97.hrd.web.dto.EstablishedPostDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
public class PostController {

    @Autowired
    private EstablishedPostService establishedPostService;
    @Autowired
    private PostService postService;
    @Autowired
    private UnitService unitService;

    @RequestMapping(value = "/v1/posts")
    public ResponseEntity<List<EstablishedPost>> getEstablishedPosts() {
        return new ResponseEntity<>(establishedPostService.getAllEstablishedPosts(), HttpStatus.OK);
    }

    @RequestMapping(value = "/v1/posts/{id}")
    public ResponseEntity<EstablishedPost> getEstablishedPostById(@PathVariable("id") Integer id) {
        return new ResponseEntity<>(establishedPostService.getEstablishPostById(id), HttpStatus.OK);
    }

    @RequestMapping(value = "/v1/posts", method = RequestMethod.POST)
    public ResponseEntity<EstablishedPost> createUser(@RequestBody EstablishedPostDTO establishedPostDTO) {

        Post post = new Post();
        post.setName(establishedPostDTO.getPost());
        Post savedPost = postService.savePost(post);

        EstablishedPost establishedPost = new EstablishedPost();
        establishedPost.setNumber(establishedPostDTO.getNumber());
        establishedPost.setPost(savedPost);
        establishedPost.setRateCount(establishedPostDTO.getRateCount());
        establishedPost.setSalary(establishedPostDTO.getSalary());
        establishedPost.setUnit(unitService.getUnitById(establishedPostDTO.getUnit()));
        EstablishedPost savedEstablishedPost = establishedPostService.saveEstablishPost(establishedPost);

        return new ResponseEntity<>(savedEstablishedPost, HttpStatus.OK);
    }
}
