/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.dao;

import com.noman.launcheticket.model.Reservation;
import org.springframework.stereotype.Service;

/**
 *
 * @author noman
 */
@Service
public interface ReservationService {
    public String insertLaunchReservation(Reservation reservation);

    public String updateLaunchReservation(int reser_id, Reservation reservation);

    public String deleteLaunchReservation(int reser_id);

    public String viewLaunchReservation();

    public Reservation viewOneLaunchReservation(int reser_id);
    
}
