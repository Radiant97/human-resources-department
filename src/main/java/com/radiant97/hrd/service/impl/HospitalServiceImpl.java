package com.radiant97.hrd.service.impl;

import com.radiant97.hrd.dao.HospitalRepository;
import com.radiant97.hrd.entity.Hospital;
import com.radiant97.hrd.service.HospitalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class HospitalServiceImpl implements HospitalService {

    @Autowired
    private HospitalRepository hospitalRepository;

    @Override
    public List<Hospital> getAllHospitalsByEmployeeId(Integer id) {
        return hospitalRepository.findByEmployee_Id(id);
    }
}
