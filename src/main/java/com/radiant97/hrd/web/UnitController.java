package com.radiant97.hrd.web;

import com.radiant97.hrd.entity.Unit;
import com.radiant97.hrd.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.support.ServletUriComponentsBuilder;
import org.springframework.web.util.UriComponentsBuilder;

import java.net.URI;
import java.util.List;

@RestController
public class UnitController {

    @Autowired
    private UnitService unitService;

    @RequestMapping(value = "/v1/units")
    public ResponseEntity<List<Unit>> getEstablishedPosts() {
        return new ResponseEntity<>(unitService.getAllUnits(), HttpStatus.OK);
    }

    @RequestMapping(value = "/v1/units/{id}")
    public ResponseEntity<Unit> getEstablishedPostById(@PathVariable("id") Integer id) {
        return new ResponseEntity<>(unitService.getUnitById(id), HttpStatus.OK);
    }

    @RequestMapping(value = "/v1/units", method = RequestMethod.POST)
    public ResponseEntity<Void> createUser(@RequestBody Unit unit) {
        Unit savedUnit = unitService.saveUnit(unit);

        URI location = ServletUriComponentsBuilder.fromCurrentRequest().path("/v1/units/{id}").buildAndExpand(savedUnit.getId()).toUri();
        return ResponseEntity.created(location).build();
    }
}
