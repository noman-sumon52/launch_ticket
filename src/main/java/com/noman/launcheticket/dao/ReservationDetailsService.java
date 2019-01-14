/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.dao;


import com.noman.launcheticket.model.ReservationDetails;
import java.util.ArrayList;
import org.springframework.stereotype.Service;

/**
 *
 * @author dhaka
 */
@Service
public interface ReservationDetailsService {
   //public String insertReservationDetails(  ReservationDetails rvd);
   public String insertReservationDetails(ArrayList<ReservationDetails> reservationdetails);

    public String updateReservationDetails(int resdet_id,  ReservationDetails rvd);

    public String deleteReservationDetails(int resdet_id);

    public String viewReservationDetails();

    public ReservationDetails viewOneReservationDetails(int resdet_id); 
}
