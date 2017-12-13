package com.radiant97.hrd.service.impl;

import com.radiant97.hrd.dao.UnitRepository;
import com.radiant97.hrd.entity.Unit;
import com.radiant97.hrd.service.UnitService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UnitServiceImpl implements UnitService {

    @Autowired
    private UnitRepository unitRepository;

    @Override
    public Unit getUnitByEmployeeId(Integer id) {
        return null;
    }

    @Override
    public List<Unit> getAllUnits() {
        return (List<Unit>) unitRepository.findAll();
    }

    @Override
    public Unit getUnitById(Integer id) {
        return unitRepository.findOne(id);
    }

    @Override
    public Unit saveUnit(Unit unit) {
        return unitRepository.save(unit);
    }
}
