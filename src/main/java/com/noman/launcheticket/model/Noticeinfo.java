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
 * @author Noman
 */
@Entity
public class Noticeinfo implements Serializable{
    //noticeid, noticesubject, description
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int noticeid;
    @Column
    private String noticesubject;
    @Column
    private String description;

    public int getNoticeid() {
        return noticeid;
    }

    public void setNoticeid(int noticeid) {
        this.noticeid = noticeid;
    }

    public String getNoticesubject() {
        return noticesubject;
    }

    public void setNoticesubject(String noticesubject) {
        this.noticesubject = noticesubject;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

       
}
