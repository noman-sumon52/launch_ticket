/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 *
 * @author dhaka
 */
@Entity
public class ReservationDetails implements Serializable{
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int resdetilid;
    @Column
    private int reservid;
    @Column
    private int launchname;
    @Column
    private int catid;
    @Column
    private int fromstationid;
    @Column
    private int tostationid;
    @Column
    @Temporal(TemporalType.DATE)
    private Date journeydate;

    public int getResdetilid() {
        return resdetilid;
    }

    public void setResdetilid(int resdetilid) {
        this.resdetilid = resdetilid;
    }

    public int getReservid() {
        return reservid;
    }

    public void setReservid(int reservid) {
        this.reservid = reservid;
    }

    public int getLaunchname() {
        return launchname;
    }

    public void setLaunchname(int launchname) {
        this.launchname = launchname;
    }

    public int getCatid() {
        return catid;
    }

    public void setCatid(int catid) {
        this.catid = catid;
    }

    public int getFromstationid() {
        return fromstationid;
    }

    public void setFromstationid(int fromstationid) {
        this.fromstationid = fromstationid;
    }

    public int getTostationid() {
        return tostationid;
    }

    public void setTostationid(int tostationid) {
        this.tostationid = tostationid;
    }

    public Date getJourneydate() {
        return journeydate;
    }

    public void setJourneydate(Date journeydate) {
        this.journeydate = journeydate;
    }

  
}
