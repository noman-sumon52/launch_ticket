package com.noman.launcheticket.controller;

import com.noman.launcheticket.daoimpl.JasperReportDAO;
import com.noman.launcheticket.reportmodel.LaunchFstation;
import com.noman.launcheticket.reportmodel.LaunchReport;
import com.noman.launcheticket.reportmodel.PassReport;
import com.noman.launcheticket.reportmodel.Report1;
import com.noman.launcheticket.reportmodel.Ticket;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import javax.naming.NamingException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperReport;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author User
 */
@Controller
public class ReportController {

    @RequestMapping(value = "/reportView", method = RequestMethod.GET)
    public String loadSurveyPg(
            @ModelAttribute("reportInputForm") LaunchReport reportInputForm, Model model) {
        model.addAttribute("reportInputForm", reportInputForm);
        return "report";
    }

    @RequestMapping(value = "/reportView", method = RequestMethod.POST)
    public String generateReport(@ModelAttribute("reportInputForm") LaunchReport reportInputForm, HttpServletRequest request, HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "cabindetails";
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
            String launchnumber = reportInputForm.getLaunchnumber();
            String launchname = reportInputForm.getLaunchname();
            HashMap<String, Object> hmParams = new HashMap<String, Object>();
            hmParams.put("launchnumber", launchnumber);
            hmParams.put("launchname", launchname);
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName, request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn);

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }

// 2   ======================================================================
    @RequestMapping(value = "/ticketView", method = RequestMethod.GET)
    public String loadSurrveyPg(
            @ModelAttribute("reportInputForm") Ticket reportInputForm, Model model) {
        model.addAttribute("reportInputForm", reportInputForm);
        return "ReportTicket";
    }

    @RequestMapping(value = "/ticketView", method = RequestMethod.POST)
    public String generateRreport(@ModelAttribute("reportInputForm") Ticket reportInputForm, HttpServletRequest request, HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "ticket";
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
            int ptn = reportInputForm.getPtn();

            HashMap<String, Object> hmParams = new HashMap<String, Object>();
            hmParams.put("ptn", ptn);

            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName, request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn);

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }
// By Name Search Process
// 3   =============================================================================================
    @RequestMapping(value = "/ReportOnePassengerpassView", method = RequestMethod.GET)
    public String loadPassSurrveyPg(
            @ModelAttribute("reportInputForm") PassReport reportInputForm, Model model) {
        model.addAttribute("reportInputForm", reportInputForm);
        return "ReportOnePassenger";
    }

    @RequestMapping(value = "/ReportOnePassengerpassView", method = RequestMethod.POST)
    public String generatePassRreport(@ModelAttribute("reportInputForm") PassReport reportInputForm, HttpServletRequest request, HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "onepassenger";
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
            String passname = reportInputForm.getPassname();

            HashMap<String, Object> hmParams = new HashMap<String, Object>();
            hmParams.put("passname", passname);

            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName, request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn);

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }

// 4   =============================================================================================
    @RequestMapping(value = "/LaunchCabinView", method = RequestMethod.GET)
    public String loadLaunchSurrveyPg(
            @ModelAttribute("reportInputForm") LaunchFstation reportInputForm, Model model) {
        model.addAttribute("reportInputForm", reportInputForm);
        return "launchwithFstation";
    }

    @RequestMapping(value = "/LaunchCabinView", method = RequestMethod.POST)
    public String generateLaunchRreport(@ModelAttribute("reportInputForm") LaunchFstation reportInputForm, HttpServletRequest request, HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "launchwithFstationrp";
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
            int fromstname = reportInputForm.getFromstname();
            int tostname = reportInputForm.getTostname();

            HashMap<String, Object> hmParams = new HashMap<String, Object>();
            hmParams.put("fromstname", fromstname);
            hmParams.put("tostname", tostname);

            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName, request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn);

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }

    // 5   =============================================================================================
    @RequestMapping(value = "/LaunchReport1CabinView", method = RequestMethod.GET)
    public String loadLaunchNameSurrveyPg(
            @ModelAttribute("reportInputForm") LaunchFstation reportInputForm, Model model) {
        model.addAttribute("reportInputForm", reportInputForm);
        return "report1_LaunchDetails";
    }

    @RequestMapping(value = "/LaunchReport1CabinView", method = RequestMethod.POST)
    public String generateLaunchNameRreport(@ModelAttribute("reportInputForm") Report1 reportInputForm, HttpServletRequest request, HttpServletResponse response) throws JRException, IOException, SQLException, NamingException {
        String reportFileName = "launchwithFstationrp";
        JasperReportDAO jrdao = new JasperReportDAO();
        Connection conn = null;
        try {
            conn = jrdao.getConnection();
            String launchname = reportInputForm.getLaunchname();
 

            HashMap<String, Object> hmParams = new HashMap<String, Object>();
            hmParams.put("launchname", launchname);
         
            JasperReport jasperReport = jrdao.getCompiledFile(reportFileName, request);

            jrdao.generateReportPDF(response, hmParams, jasperReport, conn);

        } catch (SQLException sqlExp) {
            System.out.println("Exception::" + sqlExp.toString());
        } finally {
            if (conn != null) {
                try {
                    conn.close();
                    conn = null;
                } catch (SQLException e) {
                    // TODO Auto-generated catch block
                    e.printStackTrace();
                }

            }

        }

        return null;
    }
}
