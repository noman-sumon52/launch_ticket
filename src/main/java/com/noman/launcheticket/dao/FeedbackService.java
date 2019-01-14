/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.noman.launcheticket.dao;

import com.noman.launcheticket.model.Feedback;
import org.springframework.stereotype.Service;

/**
 *
 * @author C14
 */
@Service
public interface FeedbackService {

    public String insertFeedback(Feedback fdbk);

    public String updateFeedback(int fd_id, Feedback fdbk);

    public String deleteFeedback(int fd_id);

    public String viewFeedback();

    public Feedback viewOneFeedback(int fd_id);
}
