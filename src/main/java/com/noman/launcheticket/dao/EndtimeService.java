/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.dao;


import com.noman.launcheticket.model.Endtime;
import org.springframework.stereotype.Service;

/**
 *
 * @author noman
 */
@Service
public interface EndtimeService {
     public String insertEndtimeService(Endtime endtime);

    public String updateEndtimeService(int end_id, Endtime endtime);

    public String deleteEndtimeService(int end_id);

    public String viewEndtimeService();

    public Endtime viewOneEndtimeService(int end_id);
}
