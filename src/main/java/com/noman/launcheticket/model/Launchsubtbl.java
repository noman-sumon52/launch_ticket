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
public class Launchsubtbl implements Serializable {
//launchsubid, launchid, catid, describtion, qty, rate
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int launchsubid;
    @Column
    private int launchid;
    @Column
    private String catid;
    @Column
    private String describtion;
    @Column
    private int qty;
    @Column
    private double rate;

    public int getLaunchsubid() {
        return launchsubid;
    }

    public void setLaunchsubid(int launchsubid) {
        this.launchsubid = launchsubid;
    }

    public int getLaunchid() {
        return launchid;
    }

    public void setLaunchid(int launchid) {
        this.launchid = launchid;
    }

    public String getCatid() {
        return catid;
    }

    public void setCatid(String catid) {
        this.catid = catid;
    }

    public String getDescribtion() {
        return describtion;
    }

    public void setDescribtion(String describtion) {
        this.describtion = describtion;
    }

    public int getQty() {
        return qty;
    }

    public void setQty(int qty) {
        this.qty = qty;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

}
