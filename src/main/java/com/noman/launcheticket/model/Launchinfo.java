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
import javax.persistence.Transient;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author noman
 */
@Entity
public class Launchinfo implements Serializable {

// db: launchid, fromstname, tostname, starttime, endtime, launchnumber, launchname, dayoff, catid, qty
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int launchid;
    @Column
    private int fromstationid;
    @Column
    private int tostationid;
    @Column
    private int starttimeid;
    @Column
    private int endtimeid;
    @Column
    private String launchnumber;
    @Column
    private String launchname;
    @Column
    private String dayoff;
    @Transient
    MultipartFile pimage;
    @Transient
    private Date d;
    @Column
    private int catid;

    public int getLaunchid() {
        return launchid;
    }

    public void setLaunchid(int launchid) {
        this.launchid = launchid;
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

    public int getStarttimeid() {
        return starttimeid;
    }

    public void setStarttimeid(int starttimeid) {
        this.starttimeid = starttimeid;
    }

    public int getEndtimeid() {
        return endtimeid;
    }

    public void setEndtimeid(int endtimeid) {
        this.endtimeid = endtimeid;
    }

    public String getLaunchnumber() {
        return launchnumber;
    }

    public void setLaunchnumber(String launchnumber) {
        this.launchnumber = launchnumber;
    }

    public String getLaunchname() {
        return launchname;
    }

    public void setLaunchname(String launchname) {
        this.launchname = launchname;
    }

    public String getDayoff() {
        return dayoff;
    }

    public void setDayoff(String dayoff) {
        this.dayoff = dayoff;
    }

    public Date getD() {
        return d;
    }

    public void setD(Date d) {
        this.d = d;
    }

    public MultipartFile getPimage() {
        return pimage;
    }

    public void setPimage(MultipartFile pimage) {
        this.pimage = pimage;
    }

    public int getCatid() {
        return catid;
    }

    public void setCatid(int catid) {
        this.catid = catid;
    }

}
