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

/**
 *
 * @author noman
 */
@Entity
public class Reservation implements Serializable {
    // db:reservid, emailid, launchid, fromstationid, tostationid, starttimeid, endtimeid,
    //passid, catname, ptn, launchname, launchnumber, d, qty, resstatus, resdate

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int reservid;
    @Column
    private String emailid;
    @Column
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
    private String launchname;
    @Column
    private String launchnumber;
    @Column
    private int ptn;
    @Column
    private String resstatus = "order";
    @Column
    private int passid;
    @Transient
    Date d;
    @Column
    private String resdate;
    @Column
    private String catid;
    @Column
    private String qty;
    @Column
    private String describtion;

    public String getCatid() {
        return catid;
    }

    public void setCatid(String catid) {
        this.catid = catid;
    }

    public String getQty() {
        return qty;
    }

    public void setQty(String qty) {
        this.qty = qty;
    }
   

    public String getDescribtion() {
        return describtion;
    }

    public void setDescribtion(String describtion) {
        this.describtion = describtion;
    }
    
    

    public int getReservid() {
        return reservid;
    }

    public void setReservid(int reservid) {
        this.reservid = reservid;
    }

    public String getEmailid() {
        return emailid;
    }

    public void setEmailid(String emailid) {
        this.emailid = emailid;
    }

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

    public String getLaunchname() {
        return launchname;
    }

    public void setLaunchname(String launchname) {
        this.launchname = launchname;
    }

    public String getLaunchnumber() {
        return launchnumber;
    }

    public void setLaunchnumber(String launchnumber) {
        this.launchnumber = launchnumber;
    }

    public int getPtn() {
        return ptn;
    }

    public void setPtn(int ptn) {
        this.ptn = ptn;
    }

    public String getResstatus() {
        return resstatus;
    }

    public void setResstatus(String resstatus) {
        this.resstatus = resstatus;
    }

    public int getPassid() {
        return passid;
    }

    public void setPassid(int passid) {
        this.passid = passid;
    }

    public Date getD() {
        return d;
    }

    public void setD(Date d) {
        this.d = d;
    }

    public String getResdate() {
        return resdate;
    }

    public void setResdate(String resdate) {
        this.resdate = resdate;
    }

    
}
