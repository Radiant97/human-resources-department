package com.radiant97.hrd.web;

import com.radiant97.hrd.entity.EmploymentContract;
import com.radiant97.hrd.service.EmploymentContractService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class EmploymentContractController {

    @Autowired
    EmploymentContractService employmentContractService;

    @RequestMapping(value = "/v1/employmentContracts/{id}")
    public ResponseEntity<EmploymentContract> getEmploymentContractByEmployeeId(@PathVariable("id") Integer id) {
        return new ResponseEntity<>(employmentContractService.getEmploymentContractById(id), HttpStatus.OK);
    }
}
