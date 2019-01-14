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
            var launchforlist = ${launchforlist};
            var fromstslist = ${fromstslist};
            var tostlist = ${tostlist};
            angular.module('Searchlaunch', []).controller('SearchOneControllers',
                    function ($scope) {
                        $scope.ladao = launchforlist;
                        $scope.fordao = fromstslist;
                        $scope.stdao = tostlist;
                        console.log($scope.traininforlist);
                    });
        </script>

    </head>
    <body ng-app="Searchlaunch" ng-controller="SearchOneControllers">
        <jsp:include page="header.jsp" />
        <div class="container-fluid"
             style="width: 90%; margin-top: 10px; margin-bottom: 10px">

            <div class="panel animated fadeInDown delay-05s" id="panel-1">
                <div class="panel-heading">
                    <span class="lead">Search list</span>
                </div>
                <!-- end panel heading -->
                <div class="panel-body">
                    <div class="formcontainer ">

                        <form:form commandName="addsearchoneObject" action="addviewdestinationObject"
                                   enctype="multipart/form-data">


                            <div class="form-group">
                                <select class="form-control" ng-model="fromstationids" ng-options="x.fromstationid as x.fromstname for x in fordao" required="true">
                                    <option value="">-- choose an option --</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <form:hidden  class="form-control" value="{{fromstationids}}" path="fromstationid"></form:hidden>
                                </div>


                                <div class="form-group">
                                    <select class="form-control" ng-model="tostationids" ng-options="x.tostationid as x.tostname for x in stdao" required="true">
                                        <option value="">-- choose an option --</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                <form:hidden  class="form-control" value="{{tostationids}}" path="tostationid"></form:hidden>
                                </div>
                                <div class="form-group">
                                <form:input type="text" class="form-control"  path="d" placeholder="Off Day" required="true" ></form:input>
                                </div>

                            <form:button id="editbuttons" type="submit"  class="btn">SearchLaunch</form:button>
                            <form:button id="removebuttons" type="reset" class="btn">Reset
                                Details</form:button>


                        </form:form>
                    </div>
                    <!-- panel body end -->
                </div>
            </div>
            <!-- panel end -->

            <!-- panel2 end -->
        </div>



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
        <div class="copyright-w3layouts py-xl-3 py-2 mt-xl-5 mt-4 text-center">
            <p>© 2018 NS GROUP . All Rights Reserved | Design by
                <a href="#"> Noman </a>
            </p>
        </div>

    </body>
</html>
