package com.radiant97.hrd.dao;

import com.radiant97.hrd.entity.Employee;
import org.springframework.data.repository.CrudRepository;

public interface EmployeeRepository extends CrudRepository<Employee, Integer> {
}
