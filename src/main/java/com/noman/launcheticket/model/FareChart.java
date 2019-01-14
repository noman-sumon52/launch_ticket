package com.noman.launcheticket.model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class FareChart implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int fareid;
    @Column
    private String fromstationid;
    @Column
    private String tostationid;
    @Column
    private String cabinname;
    @Column
    private double fareamt;

    public int getFareid() {
        return fareid;
    }

    public void setFareid(int fareid) {
        this.fareid = fareid;
    }

    public String getFromstationid() {
        return fromstationid;
    }

    public void setFromstationid(String fromstationid) {
        this.fromstationid = fromstationid;
    }

    public String getTostationid() {
        return tostationid;
    }

    public void setTostationid(String tostationid) {
        this.tostationid = tostationid;
    }

    public String getCabinname() {
        return cabinname;
    }

    public void setCabinname(String cabinname) {
        this.cabinname = cabinname;
    }

    public double getFareamt() {
        return fareamt;
    }

    public void setFareamt(double fareamt) {
        this.fareamt = fareamt;
    }
  

    
    
}
