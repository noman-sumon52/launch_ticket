/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.dao;

import com.noman.launcheticket.model.PassengerInfo;
import org.springframework.stereotype.Service;

/**
 *
 * @author Noman
 */
@Service
public interface PassengerInfoService {

    public String insertPassengerinfo(PassengerInfo ps);

    public String updatePassengerinfo(int psi_d, PassengerInfo ps);

    public String deletePassengerinfo(int psi_d);

    public String viewPassengerinfo();

    public PassengerInfo viewonePassengerinfo(int psi_d);

    public PassengerInfo viewonePassengerbyEmail(String email);
}
