package com.radiant97.hrd.dao;

import com.radiant97.hrd.entity.Unit;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

public interface UnitRepository extends CrudRepository<Unit, Integer> {
}
