/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.dao;

import com.noman.launcheticket.model.Tostation;
import org.springframework.stereotype.Service;

/**
 *
 * @author noman
 */
@Service
public interface TostationService {
     public String insertToStationService(Tostation tostation);

    public String updateToStationService(int tst_id, Tostation tostation);

    public String deleteTotationService(int tst_id);

    public String viewToStationService();

    public Tostation viewOneToStationService(int tst_id);
}
