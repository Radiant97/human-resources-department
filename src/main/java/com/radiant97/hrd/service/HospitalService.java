package com.radiant97.hrd.service;

import com.radiant97.hrd.entity.Hospital;

import java.util.List;

public interface HospitalService {
    List<Hospital> getAllHospitalsByEmployeeId(Integer id);
}
