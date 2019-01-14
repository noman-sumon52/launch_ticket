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
public class PassengerInfo implements Serializable {

    @Id
    @GeneratedValue
    private int passid;
    @Column
    private String passaddress;
    @Column
    private int passage;
    @Column
    private String passgender;
    @Column
    private String passgmail;
    @Column
    private String passname;
    @Column
    private String passstatus;
    @Column
    private int fromstationid;
    @Column
    private int tostationid;
    @Column
    private int starttimeid;
    @Column
    private int endtimeid;
    @Temporal(TemporalType.DATE)
    private Date ticketpurdate;
    @Temporal(TemporalType.DATE)
    private Date tickettakendate;

    public int getPassid() {
        return passid;
    }

    public void setPassid(int passid) {
        this.passid = passid;
    }

    public String getPassaddress() {
        return passaddress;
    }

    public void setPassaddress(String passaddress) {
        this.passaddress = passaddress;
    }

    public int getPassage() {
        return passage;
    }

    public void setPassage(int passage) {
        this.passage = passage;
    }

    public String getPassgender() {
        return passgender;
    }

    public void setPassgender(String passgender) {
        this.passgender = passgender;
    }

    public String getPassgmail() {
        return passgmail;
    }

    public void setPassgmail(String passgmail) {
        this.passgmail = passgmail;
    }

    public String getPassname() {
        return passname;
    }

    public void setPassname(String passname) {
        this.passname = passname;
    }

    public String getPassstatus() {
        return passstatus;
    }

    public void setPassstatus(String passstatus) {
        this.passstatus = passstatus;
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

    public Date getTicketpurdate() {
        return ticketpurdate;
    }

    public void setTicketpurdate(Date ticketpurdate) {
        this.ticketpurdate = ticketpurdate;
    }

    public Date getTickettakendate() {
        return tickettakendate;
    }

    public void setTickettakendate(Date tickettakendate) {
        this.tickettakendate = tickettakendate;
    }

}
