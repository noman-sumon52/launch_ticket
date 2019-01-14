/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.dao;

import com.noman.launcheticket.model.FareChart;
import org.springframework.stereotype.Service;

/**
 *
 * @author dhaka
 */
@Service
public interface FareChartService {

    public String insertFareChart(FareChart fc);

    public String updateFareChart(int fare_id, FareChart fc);

    public String deleteFareChart(int fare_id);

    public String viewFareChart();

    public FareChart viewOneFareChart(int fare_id);

    public String viewOneFareChartbyStationByid(String from, String to, String com);

    public FareChart viewOneFareChartbyStation(String from, String to, String com);
}
