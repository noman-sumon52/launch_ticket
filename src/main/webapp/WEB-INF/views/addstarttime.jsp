<%-- 
    Document   : Schedule
    Created on : Nov 30, 2018, 3:19:43 PM
    Author     : dhaka
--%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Start Time Page</title>
        <style type="text/css">

            .form-control:FOCUS
            {
                border: 2px solid #9ccc65;
                border-radius: 5px;
            }

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
            .list-group-item {
                overflow: hidden;
                margin: 3px;
                border-radius: 3px;
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
            var Starttimelist = ${Starttimelist};
            console.log(Starttimelist);
            angular.module('Starttimeapp', []).controller('StarttimeController',
                    function ($scope) {
                        $scope.statime = Starttimelist;
                     console.log($scope.statime);   
                    });
        </script>

    </head>
   <body ng-app="Starttimeapp" ng-controller="StarttimeController">
        <jsp:include page="header.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Managing Schedule</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="AddStarttimeObject" action="addingstarttime"
                                   enctype="multipart/form-data">
                            <c:if test="${check}">
                                <div class="form-group" hidden="true">

                                    <form:input class="form-control" Placeholder="starttime Id"
                                                type="text" path="starttimeid" required="true"></form:input>
                                </div>
                            </c:if>
                            <c:if test="${!check}">
                                <div class="form-group">
                                    <form:input class="form-control" Placeholder="starttime Id"
                                                type="text" path="starttimeid" readonly="true" required="true"></form:input>
                                </div>
                            </c:if>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="From Start Time"
                                            type="text" path="stime" required="true"></form:input>
                                </div>
                                
                                
                            <c:if test="${check}">
                                <form:button id="editbuttons" type="submit" name="Add" class="btn">Add
                                    Details</form:button>
                                <form:button id="removebuttons" type="reset" class="btn">Reset
                                    Details</form:button>
                            </c:if>
                            <c:if test="${!check}">
                                <form:button id="editbuttons" type="submit" name="Edit" class="btn">Edit
                                    Details</form:button>
                                <form:button id="removebuttons" type="reset" class="btn">Reset
                                    Details</form:button>
                            </c:if>
                        </form:form>
                    </div>
                    <!-- panel body end -->
                </div>
            </div>
            <!-- panel end -->
            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">Scheudule List</span>
                </div>
                <!-- end panel2 heading -->
               <div class="panel-body"  width="100%">
                    <ul class="list-group ">
                        <li class="list-group-item" height="45px"
                            ng-repeat="sstl in statime">
                            <div class="pull-left">
                                <ul class="list-inline">
                                    <!--//db: scheduleid, statrtime, endtime-->
                                    <li><span><b>Schedule Id: </b></span>{{sstl.starttimeid}}</li>
                                    <li><span><b>From Station Name: </b></span>{{sstl.stime}}</li>
                                    
                                </ul>
                            </div>
                            <div class="pull-right">
                                <a href="editaddstarttimebutton?startid={{sstl.scheduleid}}"><button id="editbuttons"
                                                                                              type="submit" class="btn">Edit</button></a> 

                                <a  href="removingstarttime/{{sstl.scheduleid}}"><button  id="removebuttons"
                                                                                     type="button" class="btn">Remove</button></a>
                            </div>
                        </li>
                    </ul>
                </div>
                <!--panel2 body end--> 
            </div>
            <!--panel2 end--> 
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>

 