package com.radiant97.hrd.dao;

import com.radiant97.hrd.entity.Vacation;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface VacationRepository extends CrudRepository<Vacation, Integer> {
    List<Vacation> findByEmployee_Id(Integer id);
}