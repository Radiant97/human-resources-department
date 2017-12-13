package com.radiant97.hrd.service;

import com.radiant97.hrd.entity.EmploymentContract;

public interface EmploymentContractService {
    EmploymentContract getEmploymentContractByEmployeeId(Integer id);
    EmploymentContract getEmploymentContractById(Integer id);
}
