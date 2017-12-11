package com.radiant97.hrd.dao;

import com.radiant97.hrd.entity.Post;
import org.springframework.data.repository.CrudRepository;

public interface PostRepository extends CrudRepository<Post, Integer> {
}
