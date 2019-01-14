<%-- 
    Document   : addlaunchpage
    Created on : Dec 22, 2018, 12:31:45 PM
    Author     : noman
--%>
<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html charset=UTF-8">
        <title>Add-Launch Page</title>
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

        <!--        mv.addObject("launchlists", launchlists);
                mv.addObject("categorylist", categorylist);
                mv.addObject("fromstlist", fromstlist);
                mv.addObject("tostlist", tostlist);
                mv.addObject("stratttimes", stratttimes);
                mv.addObject("endtimes", endtimes);
                mv.addObject("sublaunchlist", sublaunchlist);-->

        <script>
            var launchlists = ${launchlists};
            var categorylist = ${categorylist};
            var fromstlist = ${fromstlist};
            var tostlist = ${tostlist};
            var stratttimes = ${stratttimes};
            var endtimes = ${endtimes};
            var sublaunchlist = ${sublaunchlist};
            angular.module('launchaappss', []).controller('launchsControllermv',
                    function ($scope) {
                        $scope.lnsdao = launchlists;
                        $scope.catdao = categorylist;
                        $scope.frdao = fromstlist;
                        $scope.todao = tostlist;
                        $scope.sttdao = stratttimes;
                        $scope.enddao = endtimes;
                        $scope.subldao = sublaunchlist;

                        console.log($scope.lnsdao);
                        console.log($scope.catdao);
                        console.log($scope.frdao);
                        console.log($scope.todao);
                        console.log($scope.sttdao);
                        console.log($scope.enddao);
                        console.log($scope.subldao);
                    });
        </script>
    </head>
    <body ng-app="launchaappss" ng-controller="launchsControllermv">
        <jsp:include page="header.jsp" />
        <a href="welcome" class="btn" id="loginbutton"><button type="button" class="btn btn-default">Home</button></a>
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">
            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Managing Launce Launch </span>
                </div>

                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="launchinfoObject" action="addinglaunchinfo"
                                   enctype="multipart/form-data">
                            <c:if test="${check}">
                                <div class="form-group" hidden="true">
                                    <form:input class="form-control" Placeholder="Launch Id"
                                                type="text" path="launchid" required="true"></form:input>
                                    </div>
                            </c:if>
                            <c:if test="${!check}">
                                <div class="form-group">
                                    <form:input class="form-control" Placeholder="Launch Id"
                                                type="text" path="launchid" readonly="true" required="true"></form:input>
                                    </div>
                            </c:if>
                            <div class="form-group">
                                <form:input class="form-control" Placeholder="Launch number"
                                            type="text" path="launchnumber" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="Launch Name"
                                            type="text" path="launchname" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                    <select class="form-control" ng-model="fromstationids" ng-options="x.fromstationid as x.fromstname for x in frdao" >
                                        <option value="">-- choose an option --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{fromstationids}}" path="fromstationid"></form:hidden>
                                </div>
                                <div class="form-group">
                                    <select class="form-control" ng-model="tostationids" ng-options="x.tostationid as x.tostname for x in todao" >
                                        <option value="">-- choose an option --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{tostationids}}" path="tostationid"></form:hidden>
                                </div>
                                <div class="form-group">
                                    <select class="form-control" ng-model="starttimeids" ng-options="x.starttimeid as x.stime for x in sttdao" >
                                        <option value="">-- choose an option --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{starttimeids}}" path="starttimeid"></form:hidden>
                                </div>

                                <div class="form-group">
                                    <select class="form-control" ng-model="endtimeids" ng-options="x.endtimeid as x.etime for x in enddao" >
                                        <option value="">-- choose an option --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{endtimeids}}" path="endtimeid"></form:hidden>
                                </div>
                                <div class="form-group">
                                    <select class="form-control" ng-model="catids" ng-options="x.catid as x.catname for x in catdao" >
                                        <option value="">-- choose an option --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{catids}}" path="catid"></form:hidden>
                                </div>


                                <div class="form-group">
                                    <label>Off days</label>
                                <form:select path="dayoff">
                                    <form:option value="NONE" label="--- Select ---"/>
                                    <form:option value="Saturday" label="Saturday"/>
                                    <form:option value="Sunday" label="Sunday"/>
                                    <form:option value="Monday" label="Monday"/>
                                    <form:option value="Tuesday" label="Tuesday"/>
                                    <form:option value="Wednesday" label="Wednesday"/>
                                    <form:option value="Thursday" label="Thursday"/>
                                    <form:option value="Friday" label="Friday"/>
                                </form:select>
                            </div>

                            <div class="form-group">
                                <form:input type="file" name="fileToUpload" id="fileToUpload"
                                            path="pimage" required="true"></form:input>
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
                    <!--panel body end--> 
                </div>
            </div>
            <!--panel end--> 

            <div class="panel animated fadeInUp delay-05s" id="panel-2">
                <div class="panel-heading">
                    <span class="lead">Launch List</span>
                </div>
                <p><input type="text" ng-model="test" class="form-control" placeholder="Search Product"></p>
                <!-- end panel2 heading -->
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item" height="45px"
                            ng-repeat=" lans in lnsdao| filter:test" >
                            <table style="width: 100%" >
                                <tr>
                                    <td><img class="img-responsive" style="width:100px ;height:100px" src="resources/pimage/{{lans.launchid}}.jpg" /></td>
                                    <td>
                                        <ul>
                                            <li><span><b>Launch Id: </b></span>{{lans.launchid}}</li>
                                            <li><span><b>Launch From Station: </b></span>{{lans.fromstationid}}</li>
                                            <li><span><b>Launch To Station: </b></span>{{lans.tostationid}}</li>
                                            <li><span><b>Launch Start Time: </b></span>{{lans.starttimeid}}</li>
                                            <li><span><b>Launch End time: </b></span>{{lans.endtimeid}}</li>
                                            <li><span><b>Launch Number: </b></span>{{lans.launchnumber}}</li>
                                            <li><span><b>Launch Name: </b></span>{{lans.launchname}}</li>
                                            <li><span><b>Launch Cabin Type </b></span>{{lans.catid}}</li>
                                        </ul>

                                    <td><a href="editlaunchinfo?getpid={{lans.launchid}}"><button id="editbuttons"
                                                                                                  type="submit" class="btn">Edit</button></a> <a
                                            href="removinglaunch/{{lans.launchid}}"><button id="removebuttons"
                                                                                        type="button" class="btn">Remove</button></a></td>
                                    </td>   
                                </tr>
                            </table>
                        </li>
                    </ul>
                </div>
                <!--panel2 body end--> 
            </div>
            <!--panel2 end -->
        </div>

        <!--panel2 body end--> 
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
                                                            }
                                                            )
                                                        })
        </script>

    </body>
</html>
