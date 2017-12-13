package com.radiant97.hrd.service.impl;

import com.radiant97.hrd.dao.EmploymentContractRepository;
import com.radiant97.hrd.entity.EmploymentContract;
import com.radiant97.hrd.service.EmploymentContractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmploymentContractServiceImpl implements EmploymentContractService {

    @Autowired
    private EmploymentContractRepository employmentContractRepository;

    @Override
    public EmploymentContract getEmploymentContractByEmployeeId(Integer id) {
        return employmentContractRepository.findByEmployee_Id(id);
    }

    @Override
    public EmploymentContract getEmploymentContractById(Integer id) {
        return employmentContractRepository.findOne(id);
    }
}
