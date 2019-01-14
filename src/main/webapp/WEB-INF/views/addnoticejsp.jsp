<%-- 
    Document   : addnoticejsp
    Created on : Dec 14, 2018, 12:55:50 AM
    Author     : Noman
--%>
<link href="resources/img/l.jpg" rel="shortcut icon" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notice_page </title>
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
            var notincein = ${notinceinfolist};
            angular.module('notinceapp', []).controller('notinceController',
                    function ($scope) {
                        $scope.nolist = notincein;
                        console.log($scope.nolist);
                    });
        </script>
    </head>
    <body ng-app="notinceapp" ng-controller="notinceController">
        <jsp:include page="header.jsp" />
        <a href="welcome" class="btn" id="loginbutton"><button type="button" class="btn btn-default">Home</button></a>
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Managing  Notice </span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="notinceinfoObject" action="addingnotinceinfo"
                                   enctype="multipart/form-data">
                            <c:if test="${check}">
                                <div class="form-group" hidden="true">

                                    <form:input class="form-control" Placeholder="notince Id"
                                                type="text" path="noticeid" required="true"></form:input>
                                    </div>
                            </c:if>
                            <c:if test="${!check}">
                                <div class="form-group">
                                    <form:input class="form-control" Placeholder="notince Id"
                                                type="text" path="noticeid" readonly="true" required="true"></form:input>
                                    </div>
                            </c:if>

                            <div class="form-group">
                                <form:input class="form-control" Placeholder="notince Subject"
                                            type="text" path="noticesubject" required="true"></form:input>
                                </div>
                                <div class="form-group">
                                <form:input class="form-control" Placeholder="notince details"
                                            type="text" path="description" required="true"></form:input>
                                </div>

                            <c:if test="${check}">
                                <form:button id="editbuttons" type="submit" name="Add"
                                             class="btn">Add Station</form:button>
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
                    <span class="lead">Registered notice  Lists</span>
                </div>
                <!-- end panel2 heading -->
                <div class="panel-body">
                    <ul class="list-group">
                        <li class="list-group-item" height="45px"
                            ng-repeat="nts in nolist" >
                            <table style="width: 100%" >
                                <tr>
                                    <td>
                                        <ul>
                                            <li><span><b>Notice Id: </b></span>{{nts.noticeid}}</li>
                                            <li><span><b>Notice Number: </b></span>{{nts.noticesubject}}</li>
                                            <li><span><b>Notice Name: </b></span>{{nts.description}}</li>
                                        </ul>
                                    </td>
                                    <td><a href="editingnoticeinfo?getpid={{nts.noticeid}}"><button id="editbuttons"
                                                                                                    type="submit" class="btn">Edit</button></a> <a
                                            href="removingnoticeinfo/{{nts.noticeid}}"><button id="removebuttons"
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
    </body>
</html>
