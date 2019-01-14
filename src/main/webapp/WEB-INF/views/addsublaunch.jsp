<%-- 
    Document   : addcabinpage
    Created on : Dec 23, 2018, 11:38:51 PM
    Author     : noman
--%>
<%-- 
    Document   : addstation
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
        <title>Add-Cabin Page</title>
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
            var launchins = ${launchins};
            var Launchsublist = ${Launchsublist};
            var categolist = ${categolist};
            var catla = ${categolist};
            angular.module('cabinapp', []).controller('CabinController',
                    function ($scope) {
                    $scope.lsnubc = launchins;
                    $scope.lanso = Launchsublist;
                    $scope.catglo = categolist;
                    console.log($scope.lsubc)
                            console.log($scope.lanso)
                            console.log($scope.catglo)

                    });
        </script>

    </head>
    <body ng-app="cabinapp" ng-controller="CabinController">
        <jsp:include page="header.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">
            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Managing Cabin</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">
                        <form:form commandName="launchsubObject" action="addingsublaunchinfo"
                                   enctype="multipart/form-data">
                            <c:if test="${check}">
                                <div class="form-group" hidden="true">
                                    <form:input class="form-control" Placeholder="launch sub Id"
                                                type="text" path="launchsubid" required="true"></form:input>
                                    </div>
                            </c:if>
                            <c:if test="${!check}">
                                <div class="form-group">
                                    <form:input class="form-control" Placeholder="launch sub Id"
                                                type="text" path="launchsubid" readonly="true" required="true"></form:input>
                                    </div>
                            </c:if>
                            <div class="form-group">
                                <select class="form-control" ng-model="launchname" ng-options="x.launchid as x.launchname for x in lsnubc" >
                                    <option value="">-- choose an option --</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <form:hidden  class="form-control" value="{{launchname}}" path="launchid"></form:hidden>
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
                                <div class="form-group">
                                <form:input type="number" class="form-control"
                                            placeholder="Rate" path="rate" required="true"></form:input>
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
                    <span class="lead">Cabin List</span>
                </div>
                <!-- end panel2 heading -->
                <div class="panel-body" width="100%">
                    <ul class="list-group ">
                        <li class="list-group-item" height="45px"
                            ng-repeat="cabin in lanso">

                            <div class="pull-left">
                                <ul class="list-inline">
                                    <!--db: catid, catname, description, qty, rate-->
                                    <li><span><b>launchsub Id: </b></span>{{cabin.launchsubid}}</li>
                                    <li><span><b>Launch Name: </b></span>{{cabin.launchid}}</li>
                                    <li><span><b>Cabin Type Name: </b></span>{{cabin.catid}}</li>
                                    <li><span><b>Description Name: </b></span>{{cabin.describtion}}</li>
                                    <li><span><b>Quantity Name: </b></span>{{cabin.qty}}</li>
                                    <li><span><b>Rate: </b></span>{{cabin.rate}}</li>

                                </ul>
                            </div>
                            <div class="pull-right">
                                <a href="editlaunchsubbutton?lsubId={{cabin.launchsubid}}"><button id="editbuttons"
                                                                                             type="submit" class="btn">Edit</button></a> 

                                <a  href="removinglaunchsubbtn/{{cabin.launchsubid}}"><button  id="removebuttons"
                                                                                    type="button" class="btn">Remove</button></a>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- panel2 body end -->
            </div>
            <!-- panel2 end -->
        </div>
        <jsp:include page="footer.jsp" />
    </body>
</html>






