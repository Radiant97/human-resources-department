package com.radiant97.hrd.service.impl;

import com.radiant97.hrd.dao.EmployeeRepository;
import com.radiant97.hrd.entity.Employee;
import com.radiant97.hrd.service.EmployeeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private EmployeeRepository employeeRepository;

    @Override
    public List<Employee> getAllEmployees() {
        return (List<Employee>) employeeRepository.findAll();
    }

    @Override
    public Employee getEmployeeById(Integer id) {
        return employeeRepository.findOne(id);
    }
}
