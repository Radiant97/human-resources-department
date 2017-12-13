package com.radiant97.hrd.web;

import com.radiant97.hrd.entity.BusinessTrip;
import com.radiant97.hrd.entity.Employee;
import com.radiant97.hrd.entity.EmploymentContract;
import com.radiant97.hrd.entity.Hospital;
import com.radiant97.hrd.entity.Vacation;
import com.radiant97.hrd.service.BusinessTripService;
import com.radiant97.hrd.service.EmployeeService;
import com.radiant97.hrd.service.EmploymentContractService;
import com.radiant97.hrd.service.HospitalService;
import com.radiant97.hrd.service.VacationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import java.util.List;

@RestController
public class EmployeeController {

    @Autowired
    private EmployeeService employeeService;

    @Autowired
    private VacationService vacationService;

    @Autowired
    private HospitalService hospitalService;

    @Autowired
    private BusinessTripService businessTripService;

    @Autowired
    private EmploymentContractService employmentContractService;

    @RequestMapping(value = "v1/employees")
    public ResponseEntity<List<Employee>> getAllEmployees() {
        return new ResponseEntity<>(employeeService.getAllEmployees(), HttpStatus.OK);
    }

    @RequestMapping(value = "v1/employees/{id}")
    public ResponseEntity<Employee> getEmployeeById(@PathVariable("id") Integer id) {
        return new ResponseEntity<>(employeeService.getEmployeeById(id), HttpStatus.OK);
    }

    @RequestMapping(value = "/v1/employees/{id}/businessTrips")
    public ResponseEntity<List<BusinessTrip>> getEmploymentContractByEmployeeId(@PathVariable("id") Integer id) {
        return new ResponseEntity<>(businessTripService.getAllBusinessTripsByEmployeeId(id), HttpStatus.OK);
    }

    @RequestMapping(value = "/v1/employees/{id}/vacations")
    public ResponseEntity<List<Vacation>> getVacationsByEmployeeId(@PathVariable("id") Integer id) {
        return new ResponseEntity<>(vacationService.getAllVacationsByEmployeeId(id), HttpStatus.OK);
    }

    @RequestMapping(value = "/v1/employees/{id}/hospitals")
    public ResponseEntity<List<Hospital>> getHospitalsByEmployeeId(@PathVariable("id") Integer id) {
        return new ResponseEntity<>(hospitalService.getAllHospitalsByEmployeeId(id), HttpStatus.OK);
    }

    @RequestMapping(value = "/v1/employees/{id}/contract")
    public ResponseEntity<EmploymentContract> getContractsByEmployeeId(@PathVariable("id") Integer id) {
        return new ResponseEntity<>(employmentContractService.getEmploymentContractByEmployeeId(id), HttpStatus.OK);
    }

    @RequestMapping(value = "/v1/employees/", method = RequestMethod.POST)
    public ResponseEntity<String> createUser(@RequestBody Employee employee, UriComponentsBuilder ucBuilder) {
        Employee savedEmployee = employeeService.saveEmployee(employee);

        HttpHeaders headers = new HttpHeaders();
        headers.setLocation(ucBuilder.path("/v1/employees/{id}").buildAndExpand(savedEmployee.getId()).toUri());
        return new ResponseEntity<>(headers, HttpStatus.CREATED);
    }
}
