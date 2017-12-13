package com.radiant97.hrd.service;

import com.radiant97.hrd.entity.Unit;

import java.util.List;

public interface UnitService {
    Unit getUnitByEmployeeId(Integer id);
    List<Unit> getAllUnits();
    Unit getUnitById(Integer id);
    Unit saveUnit(Unit unit);
}
