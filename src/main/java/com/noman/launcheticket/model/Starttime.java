/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 *
 * @author noman
 */
@Entity
public class Starttime implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int starttimeid;
    @Column
    private String stime;

    public int getStarttimeid() {
        return starttimeid;
    }

    public void setStarttimeid(int starttimeid) {
        this.starttimeid = starttimeid;
    }

    public String getStime() {
        return stime;
    }

    public void setStime(String stime) {
        this.stime = stime;
    }

}
