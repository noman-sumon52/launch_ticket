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
public class Tostation implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int tostationid;
    @Column
    private String tostname;

    public int getTostationid() {
        return tostationid;
    }

    public void setTostationid(int tostationid) {
        this.tostationid = tostationid;
    }

    public String getTostname() {
        return tostname;
    }

    public void setTostname(String tostname) {
        this.tostname = tostname;
    }

}
