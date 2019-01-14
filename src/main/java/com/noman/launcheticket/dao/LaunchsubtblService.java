/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.dao;

import com.noman.launcheticket.model.Launchsubtbl;
import org.springframework.stereotype.Service;

/**
 *
 * @author noman
 */
@Service
public interface LaunchsubtblService {

    public String insertLaunchsubtbl(Launchsubtbl sublaunch);

    public String updateLaunchsubtbl(int sublaunch_id, Launchsubtbl sublaunch);

    public String deleteLaunchsubtbl(int sublaunch_id);

    public String viewLaunchsubtbl();

    public Launchsubtbl viewOneLaunchsubtbl(int sublaunch_id);

}
