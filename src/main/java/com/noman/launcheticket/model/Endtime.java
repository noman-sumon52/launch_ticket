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
public class Endtime implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int endtimeid;
    @Column
    private String etime;

    public int getEndtimeid() {
        return endtimeid;
    }

    public void setEndtimeid(int endtimeid) {
        this.endtimeid = endtimeid;
    }

    public String getEtime() {
        return etime;
    }

    public void setEtime(String etime) {
        this.etime = etime;
    }

}
