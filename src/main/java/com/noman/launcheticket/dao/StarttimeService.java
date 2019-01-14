/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.dao;

import com.noman.launcheticket.model.Starttime;
import org.springframework.stereotype.Service;

/**
 *
 * @author noman
 */
@Service
public interface StarttimeService {
     public String insertStarttimeService(Starttime strtime);

    public String updateStarttimeService(int str_id, Starttime strtime);

    public String deleteStarttimeService(int str_id);

    public String viewStarttimeService();

    public Starttime viewOneStarttimeService(int str_id);
}
