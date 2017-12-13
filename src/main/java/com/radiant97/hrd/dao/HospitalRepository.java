package com.radiant97.hrd.dao;

import com.radiant97.hrd.entity.Hospital;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface HospitalRepository extends CrudRepository<Hospital, Integer> {
    List<Hospital> findByEmployee_Id(Integer id);
}
