package com.radiant97.hrd.service;

import com.radiant97.hrd.entity.Employee;

import java.util.List;

public interface EmployeeService {
    List<Employee> getAllEmployees();
    Employee getEmployeeById(Integer id);
}
