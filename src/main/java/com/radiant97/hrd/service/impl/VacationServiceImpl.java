package com.radiant97.hrd.service.impl;

import com.radiant97.hrd.dao.VacationRepository;
import com.radiant97.hrd.entity.Vacation;
import com.radiant97.hrd.service.VacationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class VacationServiceImpl implements VacationService {

    @Autowired
    private VacationRepository vacationRepository;

    @Override
    public List<Vacation> getAllVacationsByEmployeeId(Integer id) {
        return vacationRepository.findByEmployee_Id(id);
    }
}
