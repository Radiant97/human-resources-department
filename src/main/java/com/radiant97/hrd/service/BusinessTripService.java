package com.radiant97.hrd.service;

import com.radiant97.hrd.entity.BusinessTrip;

import java.util.List;

public interface BusinessTripService {
    List<BusinessTrip> getAllBusinessTripsByEmployeeId(Integer id);
}
