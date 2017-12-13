package com.radiant97.hrd.service;

import com.radiant97.hrd.entity.Vacation;

import java.util.List;

public interface VacationService {
    List<Vacation> getAllVacationsByEmployeeId(Integer id);
}
