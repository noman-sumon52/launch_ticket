<%-- 
    Document   : buyticketpassenger
    Created on : Dec 15, 2018, 6:38:53 PM
    Author     : noman
--%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add buy Cabin Page</title>

        <style type="text/css">

            .panel>.panel-heading {
                color: #558b2f;
                background-color: #aed581;
                border-color: #aed581;
            }
            .panel>.panel-body
            {
                background-color: #f1f8e9;
                border-color: #aed581;
            }

            .form-control:FOCUS
            {
                border: 2px thin #9ccc65;
                border-radius: 5px;
            }
            .list-group-item {
                overflow: hidden;
            }
            #removebuttons
            {
                color: #ffffff;
                background-color: #e57373;
            }
            #removebuttons:HOVER {
                color: #ffffff;
                background-color: #e53935;
            }
            #editbuttons{
                color: #ffffff;
                background: linear-gradient(to bottom, #aed581 50%, #9ccc65 50%);	
            }
            #editbuttons:HOVER {
                color: #ffffff;
                background: linear-gradient(to bottom, #9ccc65 50%, #8bc34a 50%);	
            }
        </style>
        <script src="resources/js/angular.js"></script>
        

    </head>
    <body >
        <jsp:include page="header.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Booking Cabin</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="viewtrainlistc" action="reservationpage"
                                   enctype="multipart/form-data">
                              
                               
                                <div class="form-group">
                                <form:input class="form-control" type="text"  path="d"   ></form:input>

                                </div>
                                <form:hidden path="launchid" value="${lanchlistsp.launchid}"></form:hidden>
                                
                                <form:hidden path="launchnumber" value="${lanchlistsp.launchnumber}"></form:hidden>
                                
                                <form:hidden path="fromstationid" value="${lanchlistsp.fromstationid}"></form:hidden>

                                <form:hidden path="tostationid" value="${lanchlistsp.tostationid}"></form:hidden>
                                
                                <form:hidden path="starttimeid" value="${lanchlistsp.depaturetime}"></form:hidden>
                                
                                <form:hidden path="endtimeid" value="${lanchlistsp.arivaltime}"></form:hidden>
                               
                               

                                <form:hidden path="d" value="${d}"></form:hidden>

                          
                           <button id="editbuttons" type="submit" class="btn">Buy Cabin</button>                


                        </form:form>
                    </div>
                    <!-- panel body end -->
                </div>
            </div>
            <!-- panel end -->
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">Launch Booking information List</span>
                </div>
               
                <p><input type="text" ng-model="test" class="form-control" placeholder="Search railways"></p>
<!--                  end panel2 heading -->
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item" height="45px"
                            >
                            <table style="width: 100%">
                                <tr>

                                    <td>
                                        <ul>
                                            <li><span><b>Launch Id: </b></span>${laucns.launchid}</li>
                                            <li><span><b>Launch Number: </b></span>${laucns.launchnumber}</li>
                                            <li><span><b>Launch name: </b></span>${laucns.launchname}</li>
                                            <li><span><b>From stationId : </b></span>${laucns.fromstationid}</li>
                                            <li><span><b>To stationId : </b></span>${laucns.tostationid}</li>
                                            <li><span><b>Depature Time : </b></span>${laucns.depaturetime}</li>
                                            <li><span><b>ArivalTime : </b></span>${laucns.arivaltime}</li>
                                            <li><span><b>Day Train: </b></span>${laucns.dayoff}</li><!--
-->                                        </ul>
                                    </td>
                                    
                                </tr>
                            </table>
                        </li>
                    </ul>
                </div>
<!--                 panel2 body end -->
            </div>

            <!-- panel2 end -->
        </div>

        <jsp:include page="footer.jsp" />

        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

        <script>
                $(document).ready(function () {
                    var date_input = $('input[name="d"]'); //our date input has the name "date"

                    var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
                    date_input.datepicker({
                        format: 'yyyy/mm/dd',
                        container: container,
                        todayHighlight: true,
                        autoclose: true,
                    })
                })
        </script>


    </body>
</html>
