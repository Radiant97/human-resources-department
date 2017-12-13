package com.radiant97.hrd.dao;

import com.radiant97.hrd.entity.Unit;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class UserRepositoryTest extends Assert {

    @Autowired
    public static UnitRepository ur;

    @Test
    public static void main(String[] args) {

        Unit u = new Unit();
        u.setId(111111);
        u.setName("wwww");
        u.setPhone("qweqwe");


        System.out.println(ur);

    }

}
