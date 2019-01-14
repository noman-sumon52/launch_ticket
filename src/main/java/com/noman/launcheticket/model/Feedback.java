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
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import org.springframework.web.multipart.MultipartFile;

/**
 *
 * @author C14
 */
@Entity
public class Feedback implements Serializable {
//    feedid, passid, subject, detailsfeed, location//

    @Id
    private int feedid;
    @Column
    int passid;
    @Column
    String subject;
    @Column
    String detailsfeed;
    @Column
    String location;
    @Column
    String feddate;
//    @Transient
//    MultipartFile fdimage;

   

    public int getFeedid() {
        return feedid;
    }

    public void setFeedid(int feedid) {
        this.feedid = feedid;
    }

    public int getPassid() {
        return passid;
    }

    public void setPassid(int passid) {
        this.passid = passid;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getDetailsfeed() {
        return detailsfeed;
    }

    public void setDetailsfeed(String detailsfeed) {
        this.detailsfeed = detailsfeed;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getFeddate() {
        return feddate;
    }

    public void setFeddate(String feddate) {
        this.feddate = feddate;
    }
}
