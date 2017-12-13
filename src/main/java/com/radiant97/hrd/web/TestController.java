package com.radiant97.hrd.web;

import com.radiant97.hrd.dao.EmploymentContractRepository;
import com.radiant97.hrd.dao.UnitRepository;
import com.radiant97.hrd.entity.Employee;
import com.radiant97.hrd.entity.EmploymentContract;
import com.radiant97.hrd.entity.Unit;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

@RestController
public class TestController {

    @Autowired
    EmploymentContractRepository employmentContractRepository;
    @Autowired
    UnitRepository ur;

    @RequestMapping(value = "/v1/test")
    public ResponseEntity<Unit> test() {
        Unit u = new Unit();
        u.setId(111111);
        u.setName("wwww");
        u.setPhone("qweqwe");

        return new ResponseEntity<>(ur.save(u), HttpStatus.OK);
    }

    @RequestMapping(value = "/v1/test/unit", method = RequestMethod.POST)
    public ResponseEntity<Unit> createUser(@RequestBody Unit unit, UriComponentsBuilder ucBuilder) {
        Unit savedUnit = ur.save(unit);

        //HttpHeaders headers = new HttpHeaders();
        //headers.setLocation(ucBuilder.path("/v1/employees/{id}").buildAndExpand(savedUnit.getId()).toUri());
        return new ResponseEntity<>(savedUnit, HttpStatus.CREATED);
    }
}
