package com.radiant97.hrd.dao;

import com.radiant97.hrd.entity.BusinessTrip;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface BusinessTripRepository extends CrudRepository<BusinessTrip, Integer> {
    List<BusinessTrip> findByEmployee_Id(Integer id);
}
