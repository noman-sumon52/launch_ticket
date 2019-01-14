<%-- 
    Document   : addreservation
    Created on : Jan 5, 2019, 2:51:47 AM
    Author     : noman
--%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Reservation Page</title>

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

        <script>
            var reservationlist =${reservationlist};
            var categorylist = ${categorylist};

            angular.module('Resurvationapp', []).controller('ResurvationappController',
                    function ($scope) {
                        $scope.mind = reservationlist;
                         $scope.catdao = categorylist;

                        console.log($scope.mind);
                    });
        </script>
    </head>
    <body ng-app="Resurvationapp" ng-controller="ResurvationappController" >
        <jsp:include page="header.jsp" />
        <div class="container-fluid"
             style="width: 80%; margin-top: 10px; margin-bottom: 10px">
            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Add reservation</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer">
                        <c:if test="${check}">
                            <form:form name="addreserveObject"
                                       modelAttribute="viewtrainlistc" action="reservationadd"
                                       method="post">

                                <div class="form-group" hidden="true">
                                    <lable>Reservation Id</lable> 
                                        <form:input class="form-control"
                                                    Placeholder="Reservation Id" type="text" path="reservid" ></form:input>
                                    </div>

                                    <div class="form-group">
                                        <lable>passenger Mobile Number</lable> 
                                        <form:input class="form-control" 
                                                    type="text" path="passid" value="${passids}" ></form:input>
                                    </div>

                                    <div class="form-group">
                                        <lable>Reservation date</lable> 
                                        <form:input type="text" class="form-control"  path="resdate"  required="true"></form:input>
                                    </div>
                                    <div class="form-group" hidden="true">
                                        <lable>Status </lable>
                                        <form:input type="text" class="form-control"  path="resstatus" required="true"></form:input>
                                    </div>
                                    <div class="form-group" hidden="true">
                                        <lable>ptn number</lable>
                                        <form:input type="text" class="form-control"  path="ptn" ></form:input>
                                    </div>



                                    <div class="form-group" hidden="true">
                                        <lable>Launch Id</lable> 
                                        <form:input class="form-control" type="text"  path="launchid" value="${launchids}"  ></form:input>

                                    </div>

                                        <div class="form-group" hidden="true">
                                        <lable>Fromstation Name</lable>
                                        <form:input class="form-control" type="text"  path="fromstationid" value="${fromstationids}"  ></form:input>

                                    </div>
                                        <div class="form-group" hidden="true">
                                        <lable>Tostation Name</lable>
                                        <form:input class="form-control" type="text"  path="tostationid" value="${tostationids}"  ></form:input>

                                    </div>
                                    <div class="form-group" hidden="true">
                                        <lable>depature time</lable> 
                                        <form:input class="form-control"   path="starttimeid"   value="${starttimeids}" ></form:input>

                                    </div>

                                    <div class="form-group" hidden="true">
                                        <lable>arivaltime</lable> 
                                        <form:input class="form-control"   path="endtimeid" value="${endtimeids}"   ></form:input>


                                    </div>
                                    <div class="form-group">
                                        <lable>launch name</lable>
                                        <form:input type="text" class="form-control" value="${launchnames}"  path="launchname" required="true"></form:input>
                                    </div>
                                    <div class="form-group" hidden="true">
                                        <lable>launch number</lable>
                                        <form:input type="text" class="form-control" value="${launchnumbers}"  path="launchnumber" required="true"></form:input>
                                    </div>
                                    <div class="form-group">
                                        <lable>user email</lable> 
                                        <form:input class="form-control"   path="emailid"  value="${UserId}" ></form:input>

                                    </div>
                                    <div class="form-group">
                                        <lable>Journey Date</lable> 
                                        <form:input class="form-control"   path="d"  value="${d}"  ></form:input>
                                    </div>
                                    <div class="form-group">
                                        <select class="form-control" ng-model="catname" ng-options="x.catid as x.catname for x in catdao" required="true" >
                                        <option value="">-- choose an option --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{catname}}" path="catid"></form:hidden>
                                </div>

                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Quantity"
                                            type="text" path="qty" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input type="text" class="form-control"
                                            placeholder="Pasenger Name" path="describtion" required="true"></form:input>
                                </div>
                                    
                                    
                                    

                                <form:button id="editbuttons" type="submit" name="AddReser"
                                             class="btn">Confirm</form:button>
                                <form:button id="removebuttons" type="reset" name="reset" class="btn">Reset
                                    Details</form:button>

                            </form:form>
                        </c:if>

                        <c:if test="${!check}">
                            <form:form name="addreserveObject"
                                       modelAttribute="fffffff" action="reservationadd"
                                       method="post">

                                <div class="form-group">
                                    <lable>Reservation Id</lable> 
                                        <form:input class="form-control"
                                                    Placeholder="Reservation Id" type="text" path="reservid" required="true"></form:input>
                                    </div>
                                    <div class="form-group">
                                        <lable>passenger id</lable> 
                                        <form:input class="form-control" 
                                                    type="text" path="passid" value="${passids}" ></form:input>
                                    </div>

                                    <div class="form-group">
                                        <lable>Reservation date</lable> 
                                        <form:input type="text" class="form-control"  path="resdate"  required="true"></form:input>
                                    </div>
                                    <div class="form-group">
                                        <lable>ptn number</lable>
                                        <form:input type="text" class="form-control"  path="resstatus" required="true"></form:input>
                                    </div>
                                    <div class="form-group">
                                        <lable>Reservation Status</lable>
                                        <form:input type="text" class="form-control"  path="ptn" ></form:input>
                                    </div>
                                    <div class="form-group">
                                        <lable>Trainid</lable> 
                                        <form:input class="form-control"  path="launchid" value="${launchids}"  ></form:input>
                                    </div>

                                    <div class="form-group">
                                        <lable>Fromstation Name</lable>
                                        <form:input class="form-control"   path="fromstationid" value="${fromstationids}"  ></form:input>

                                    </div>
                                    <div class="form-group">
                                        <lable>Tostation Name</lable>
                                        <form:input class="form-control"   path="tostationid" value="${tostationids}"  ></form:input>

                                    </div>
                                    <div class="form-group">
                                        <lable>depature time</lable> 
                                        <form:input class="form-control"   path="starttimeid"   value="${starttimeids}" ></form:input>

                                    </div>

                                    <div class="form-group">
                                        <lable>arivaltime</lable> 
                                        <form:input class="form-control"   path="endtimeid" value="${endtimeids}"   ></form:input>


                                    </div>
                                    <div class="form-group">
                                        <lable>launch name</lable>
                                        <form:input type="text" class="form-control" value="${launchnames}"  path="launchname" required="true"></form:input>
                                    </div>
                                    <div class="form-group">
                                        <lable>launch number</lable>
                                        <form:input type="text" class="form-control" value="${launchnumbers}"  path="launchnumber" required="true"></form:input>
                                    </div>
                                    <div class="form-group">
                                        <lable>user email</lable> 
                                        <form:input class="form-control"   path="emailid"  value="${UserId}" ></form:input>

                                    </div>
                                    <div class="form-group">
                                        <lable>Journey Date</lable> 
                                        <form:input class="form-control"   path="d"  value="${d}"  ></form:input>

                                    </div>
                                         <div class="form-group">
                                    <select class="form-control" ng-model="catname" ng-options="x.catid as x.catname for x in catglo" >
                                        <option value="">-- choose an option --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{catname}}" path="catid"></form:hidden>
                                </div>

                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Quantity"
                                            type="text" path="qty" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input type="text" class="form-control"
                                            placeholder="Discribtion" path="describtion" required="true"></form:input>
                                </div>

                                <form:button id="editbuttons" type="submit" name="AddReser"
                                             class="btn">Confirm</form:button>
                                <form:button id="removebuttons" type="reset" name="reset" class="btn">Reset
                                    Details</form:button>
                            </form:form>
                        </c:if>
                    </div>
                </div>
                <!-- panel1 body end -->
            </div>
            <!-- panel1 end -->
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">List Of Reservation</span>
                </div>
                <!-- end panel2 heading -->
                <div class="panel-body"  width="100%">
                    <ul class="list-group ">
                        <li class="list-group-item" height="45px"
                            ng-repeat="Pro in mind">
                            <table style="width: 100%">
                                <tr>
                                    <td>
                                        <ul>
                                            <li><span><b>Reservation Id: </b></span>{{Pro.reservid}}</li>
                                            <li><span><b>passenger  Id: </b></span>{{Pro.passid}}</li>
                                            <li><span><b>Reservation Date: </b></span>{{Pro.resdate}}</li>
                                            <li><span><b>primary ticket Number: </b></span>{{Pro.ptn}}</li>
                                            <li><span><b>reservation status: </b></span>{{Pro.resstatus}}</li>
                                            <li><span><b>Launch ID  : </b></span>{{Pro.launchid}}</li>
                                            <li><span><b>fromstation : </b></span>{{Pro.fromstationid}}</li>
                                            <li><span><b>to station : </b></span>{{Pro.tostationid}}</li>
                                            <li><span><b>Depaturetime: </b></span>{{Pro.starttimeid}}</li>
                                            <li><span><b>Arivaltime: </b></span>{{Pro.endtimeid}}</li>
                                            <li><span><b>User Email: </b></span>{{Pro.emailid}}</li>
                                            <li><span><b> Cabin Category </b></span>{{Pro.catid}}</li>
                                            <li><span><b>Quantity: </b></span>{{Pro.qty}}</li>
                                            <li><span><b>Description: </b></span>{{Pro.describtion}}</li>

                                        </ul>
                                    </td>
                                    <td><a href="editingreservation?getrid={{Pro.resid}}"><button id="editbuttons"
                                                                                                  type="submit" class="btn">Edit</button></a> <a
                                            href="removingreservation/{{reserve.resid}}"><button id="removebuttons"
                                                                                             type="button" class="btn">Remove</button></a></td>
                                </tr>
                            </table>
                        </li>
                    </ul>
                </div>
                <!-- panel2 body end -->
            </div>
            <!-- panel2 end -->
        </div>

        <jsp:include page="footer.jsp" />
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

        <script>
                                $(document).ready(function () {
                                    var date_input = $('input[name="resdate"]'); //our date input has the name "date"
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

