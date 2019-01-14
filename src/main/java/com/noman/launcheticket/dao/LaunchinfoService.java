/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.dao;

import com.noman.launcheticket.model.Launchinfo;
import java.util.Date;
import org.springframework.stereotype.Service;

/**
 *
 * @author noman
 */
@Service
public interface LaunchinfoService {

    public String insertLaunch(Launchinfo launch);

    public String updateLaunch(int launch_id, Launchinfo launch);

    public String deleteLaunch(int launch_id);

    public String viewLaunch();

    public Launchinfo viewOneLaunch(int launch_id);

    public String SearchLaunch(Launchinfo launch);


    public Launchinfo buyticket(int launch_id);

}
