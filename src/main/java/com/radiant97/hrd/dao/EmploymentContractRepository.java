package com.radiant97.hrd.dao;

import com.radiant97.hrd.entity.EmploymentContract;
import org.springframework.data.repository.CrudRepository;

public interface EmploymentContractRepository extends CrudRepository<EmploymentContract, Integer> {
    EmploymentContract findByEmployee_Id(Integer id);
}
