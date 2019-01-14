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
public class Fromstation implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int fromstationid;
    @Column
    private String fromstname;

    public int getFromstationid() {
        return fromstationid;
    }

    public void setFromstationid(int fromstationid) {
        this.fromstationid = fromstationid;
    }

    public String getFromstname() {
        return fromstname;
    }

    public void setFromstname(String fromstname) {
        this.fromstname = fromstname;
    }
    

}
