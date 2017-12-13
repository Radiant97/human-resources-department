package com.radiant97.hrd.service.impl;

import com.radiant97.hrd.dao.BusinessTripRepository;
import com.radiant97.hrd.entity.BusinessTrip;
import com.radiant97.hrd.service.BusinessTripService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class BusinessTripServiceImpl implements BusinessTripService {

    @Autowired
    private BusinessTripRepository businessTripRepository;

    @Override
    public List<BusinessTrip> getAllBusinessTripsByEmployeeId(Integer id) {
        return businessTripRepository.findByEmployee_Id(id);
    }
}
