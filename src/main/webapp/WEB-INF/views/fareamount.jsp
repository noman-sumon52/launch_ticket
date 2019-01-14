<%-- 
    Document   : fareamount
    Created on : Dec 9, 2018, 1:41:33 AM
    Author     : dhaka
--%>

<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

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
            var farechartlist = ${farechartlist};
            var launchinfolist = ${launchinfolist};
            var launchsubtypelist = ${launchsubtypelist};
            var passengertypelist = ${passengertypelist};
            var fromstationservlist = ${fromstationservlist};
            var tostationservlist = ${tostationservlist};
            console.log(farechartlist);
            angular.module('Sarkar', []).controller('ProductController',
                    function ($scope) {
                        $scope.farechartlist = farechartlist;
                        $scope.launchinfolist = launchinfolist;
                        $scope.launchsubtypelist = launchsubtypelist;
                        $scope.passengertypelist = passengertypelist;
                        $scope.fromstationservlist = fromstationservlist;
                        $scope.tostationservlist = tostationservlist;
                        console.log($scope.farechartlist);
                    });
        </script>
    </head>
    <body ng-app="Sarkar" ng-controller="ProductController">
        <jsp:include page="header.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Manage Fare Chart</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="newfarechartObject" action="farechartvaluadd"
                                   enctype="multipart/form-data">
                            <c:if test="${check}">
                                <div class="form-group">

                                    <form:input class="form-control" Placeholder="Fare Id"
                                                type="text" path="fareid" required="true"></form:input>
                                    </div>
                            </c:if>
                            <c:if test="${!check}">
                                <div class="form-group">
                                    <form:input class="form-control" Placeholder="Fare Id"
                                                type="text" path="fareid" readonly="true" required="true"></form:input>
                                    </div>
                            </c:if>

                            <div class="form-group">
                                <select class="form-control" ng-model="fromstationid" ng-options=" x.stationname as  x.stationname  for x in fromstationservlist">
                                    <option value="">-- choose an option --</option>
                                </select>

                            </div>
                            <div class="form-group">
                                <form:hidden  class="form-control" value="{{fromstationid}}" path="fromstationid"></form:hidden>
                                </div>

                                <div class="form-group">
                                    <select class="form-control" ng-model="tostationid" ng-options="x.stationname as x.stationname  for x in tostationservlist" >
                                        <option value="">-- choose an option --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{tostationid}}" path="tostationid"></form:hidden>
                                </div>
                                {{comname}}
                                <div class="form-group">
                                    <select class="form-control" ng-model="comname" ng-options="x.comname as x.comname for x in passengertypelist" >
                                        <option value="">-- choose an option --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{comname}}" path="comname"></form:hidden>
                                </div>

                                <div class="form-group">
                                <form:input type="text" class="form-control"  path="fareamt" placeholder="Fareamout" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                    <select class="form-control" ng-model="passtypeid" ng-options="x.passtype as x.passtype for x in launchsubtypelist" >
                                        <option value="">-- choose an option --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{passtypeid}}" path="passtypeid"></form:hidden>
                                </div>
                            <c:if test="${check}">
                                <form:button id="editbuttons" type="submit" name="AddFare" class="btn">Add
                                    Details</form:button>
                                <form:button id="removebuttons" type="reset" class="btn">Reset
                                    Details</form:button>
                            </c:if>
                            <c:if test="${!check}">
                                <form:button id="editbuttons" type="submit" name="EditFare" class="btn">Edit
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
                    <span class="lead">Fare List</span>
                </div>
                <p><input type="text" ng-model="test" class="form-control" placeholder="Search product"></p>
                <!-- end panel2 heading -->
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item" height="45px"
                            ng-repeat="farec in farechartlist| filter:test">
                            <table style="width: 100%">
                                <tr>

                                    <td>
                                        <ul>
                                            <li><span><b>Fare Id: </b></span>{{farec.fareid}}</li>
                                            <li><span><b>Fromstation Id </b></span>{{farec.fromstationid}}</li>
                                            <li><span><b>Tostation Id : </b></span>{{farec.tostationid}}</li>
                                            <li><span><b>Comartmenttype Id: </b></span>{{farec.comname}}</li>
                                            <li><span><b>Fare Amount : </b></span>{{farec.fareamt}}</li>
                                            <li><span><b>passengertype Id: </b></span>{{farec.passtypeid}}</li>
                                        </ul>
                                    </td>
                                    <td><a href="editingfarechart?getfid={{farec.fareid}}"><button id="editbuttons"
                                                                                                     type="submit" class="btn">Edit</button></a> <a
                                            href="removingfarechart/{{farec.fareid}}"><button id="removebuttons"
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


    </body>
</html>
