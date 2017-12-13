package com.radiant97.hrd.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import java.util.Date;

@Entity
@Table(name = "schedule")
public class Schedule {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer id;

    private Integer hoyrsPerDay;
    private Integer daysPerWeek;
    @Temporal(TemporalType.TIME)
    private Date workDayBeginning;
    @Temporal(TemporalType.TIME)
    private Date workDayEnd;
    private Integer lunchBreak;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getHoyrsPerDay() {
        return hoyrsPerDay;
    }

    public void setHoyrsPerDay(Integer hoyrsPerDay) {
        this.hoyrsPerDay = hoyrsPerDay;
    }

    public Integer getDaysPerWeek() {
        return daysPerWeek;
    }

    public void setDaysPerWeek(Integer daysPerWeek) {
        this.daysPerWeek = daysPerWeek;
    }

    public Date getWorkDayBeginning() {
        return workDayBeginning;
    }

    public void setWorkDayBeginning(Date workDayBeginning) {
        this.workDayBeginning = workDayBeginning;
    }

    public Date getWorkDayEnd() {
        return workDayEnd;
    }

    public void setWorkDayEnd(Date workDayEnd) {
        this.workDayEnd = workDayEnd;
    }

    public Integer getLunchBreak() {
        return lunchBreak;
    }

    public void setLunchBreak(Integer lunchBreak) {
        this.lunchBreak = lunchBreak;
    }
}
