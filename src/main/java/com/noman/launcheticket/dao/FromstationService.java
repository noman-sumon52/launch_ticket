/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.dao;

import com.noman.launcheticket.model.Fromstation;
import org.springframework.stereotype.Service;

/**
 *
 * @author noman
 */
@Service
public interface FromstationService {
     public String insertFromStationService(Fromstation fstation);

    public String updateFromStationService(int f_id, Fromstation fstation);

    public String deleteFromtationService(int f_id);

    public String viewFromStationService();

    public Fromstation viewOneFromStationService(int f_id);
}
