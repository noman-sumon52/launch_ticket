<%-- 
    Document   : addfeedbackpage
    Created on : Dec 18, 2018, 5:00:11 PM
    Author     : C14
--%>

<link href="resources/img/l.jpg" rel="shortcut icon" />
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback_page </title>
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
            var Feedlist = ${FeedbackServicelist};
            var Passelist = ${PassengerInfoServicelist};
            angular.module('feedbackapp', []).controller('feedbackController',
                    function ($scope) {
                        $scope.flo = Feedlist;
                        $scope.plo = Passelist;
                        console.log($scope.flo);
                        console.log($scope.plo);
                    });
        </script>
        <!-- Bootstrap Css -->
        <link href="resources/deshboardplug/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
        <!-- Bars Css -->
        <link rel="stylesheet" href="resources/deshboardplug/css/bar.css">
        <!--// Bars Css -->
        <!-- Calender Css -->
        <link rel="stylesheet" type="text/css" href="resources/deshboardplug/css/pignose.calender.css" />
        <!--// Calender Css -->
        <!-- Common Css -->
        <link href="resources/deshboardplug/css/style.css" rel="stylesheet" type="text/css" media="all" />
        <!--// Common Css -->
        <!-- Nav Css -->
        <link rel="stylesheet" href="resources/deshboardplug/css/style4.css">
        <!--// Nav Css -->
        <!-- Fontawesome Css -->
        <link href="resources/deshboardplug/css/fontawesome-all.css" rel="stylesheet">
        <!--// Fontawesome Css -->
        <!--// Style-sheets -->
        <!--web-fonts-->
        <link href="resources/deshboardplug/fonts.googleapis.com/css?family=Poiret+One" rel="stylesheet">
        <link href="resources/deshboardplug/fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
        <!--//web-fonts-->
    </head>
    <body ng-app="feedbackapp" ng-controller="feedbackController">
        <div class="wrapper">
            <!--Sidebar Holder--> 
            <nav id="sidebar">
                <div class="sidebar-header">
                    <h1>
                        <a href="index.html">Launch Easy Ticketing</a>
                    </h1>
                    <span>L</span>
                </div>
                <div class="profile-bg"></div>
                <ul class="list-unstyled components">
                    <li class="active">

                        <a href="welcome" class="btn" id="loginbutton"> <i class="fas fa-th-large"></i> Dashboard</a>
                    </li>
                    <li>
                        <a href="#homeSubmenu" data-toggle="collapse" aria-expanded="false">
                            <i class="fas fa-laptop"></i>
                            Admin Control
                            <i class="fas fa-angle-down fa-pull-right"></i>
                        </a>
                        <ul class="collapse list-unstyled" id="homeSubmenu">
                            <li id="menu-academico-boletim" ><a href="launchmapingpage">Add Launch</a></li>
                            <li id="menu-academico-boletim" ><a href="showcsublaunchpage">Add sub Launch</a></li>
                            <li id="menu-academico-avaliacoes" ><a href="passengerinfopagemap">Add Passengers</a></li>		           
                            <li id="menu-academico-boletim" ><a href="signup">Add Staff</a></li>
                            <li id="menu-academico-avaliacoes" ><a href="farechartmap">Add Fare chart</a></li>
                            <li id="menu-academico-avaliacoes" ><a href="signup">Add Feedback</a></li>
                            <li id="menu-academico-avaliacoes" ><a href="notincemap">Add Notice show page</a></li>
                            <li id="menu-academico-avaliacoes" ><a href="report">Reservation details</a></li>
                            <li>
                                <a href="cards.html">Cards</a>
                            </li>
                            <li>
                                <a href="carousels.html">Carousels</a>
                            </li>
                            <li>
                                <a href="forms.html">Forms</a>
                            </li>
                            <li>
                                <a href="modals.html">Modals</a>
                            </li>
                            <li>
                                <a href="tables">Tables</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#pageSubmenu1" data-toggle="collapse" aria-expanded="false">
                            <i class="far fa-file"></i>
                            Pages
                            <i class="fas fa-angle-down fa-pull-right"></i>
                        </a>
                        <ul class="collapse list-unstyled" id="pageSubmenu1">
                            <li>
                            <li><a href="fromstationpage">From Station routes</a></li>
                            <li><a href="tostationpage">To Station routes</a></li>
                            <li><a href="Startimepage">Arrival Time Schedule</a></li>
                            <li><a href="endtimepage">Departure Time Schedules</a></li>
                            <li><a href="registrationForm">Registration Form</a></li>
                            <li><a href="reportView">Report</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="mailbox.html">
                            <i class="far fa-envelope"></i>
                            Mailbox

                            <span class="badge badge-secondary float-md-right bg-danger">5 New</span>
                        </a>

                    </li>
                    <li>
                        <a href="widgets.html">
                            <i class="far fa-window-restore"></i>
                            Widgets
                        </a>
                    </li>
                    <li>
                        <a href="pricing.html">
                            <i class="fas fa-table"></i>
                            Pricing Tables
                        </a>
                    </li>
                    <li>
                        <a href="#pageSubmenu3" data-toggle="collapse" aria-expanded="false">
                            <i class="fas fa-users"></i>
                            User
                            <i class="fas fa-angle-down fa-pull-right"></i>
                        </a>
                        <ul class="collapse list-unstyled" id="pageSubmenu3">
                            <li>
                            <li id="menu-arquivos" ><a href="login">Login</a></li>
                            <li id="menu-arquivos" ><a href="signup">Sign Up</a></li>
                            <li id="menu-arquivos" ><a href="availablelaunchpage">Search Launch</a></li>
                            <li id="menu-arquivos" ><a href="showingcategorypage">Add Category </a></li>	
                            <li id="menu-arquivos" ><a href="showcartpage">CART</a></li>
                            <a href="login.html">Login</a>
                    </li>
                    <li>
                        <a href="register.html">Register</a>
                    </li>
                    <li>
                        <a href="forgot.html">Forgot password</a>
                    </li>
                </ul>
                </li>
                <li>
                    <a href="maps.html">
                        <i class="far fa-map"></i>
                        Maps
                    </a>
                </li>
                </ul>
            </nav>

            <!-- Page Content Holder -->
            <div id="content">
                <!-- top-bar -->
                <nav class="navbar navbar-default mb-xl-5 mb-4">
                    <div class="container-fluid">

                        <div class="navbar-header">
                            <button type="button" id="sidebarCollapse" class="btn btn-info navbar-btn">
                                <i class="fas fa-bars"></i>
                            </button>
                        </div>
                        <!-- Search-from -->
                        <form action="#" method="post" class="form-inline mx-auto search-form">
                            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" required="">
                            <button class="btn btn-style my-2 my-sm-0" type="submit">Search</button>
                        </form>
                        <!--// Search-from -->
                        <ul class="top-icons-agileits-w3layouts float-right">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
                                   aria-expanded="false">
                                    <i class="far fa-bell"></i>
                                    <span class="badge">4</span>
                                </a>
                                <div class="dropdown-menu top-grid-scroll drop-1">
                                    <h3 class="sub-title-w3-agileits">User notifications</h3>
                                    <a href="#" class="dropdown-item mt-3">
                                        <div class="notif-img-agileinfo">
                                            <img src="resources/deshboardplug/images/clone.jpg" class="img-fluid" alt="Responsive image">
                                        </div>
                                        <div class="notif-content-wthree">
                                            <p class="paragraph-agileits-w3layouts py-2">
                                                <span class="text-diff">John Doe</span> Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.</p>
                                            <h6>4 mins ago</h6>
                                        </div>
                                    </a>
                                    <a href="#" class="dropdown-item mt-3">
                                        <div class="notif-img-agileinfo">
                                            <img src="resources/deshboardplug/images/clone.jpg" class="img-fluid" alt="Responsive image">
                                        </div>
                                        <div class="notif-content-wthree">
                                            <p class="paragraph-agileits-w3layouts py-2">
                                                <span class="text-diff">Diana</span> Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.</p>
                                            <h6>6 mins ago</h6>
                                        </div>
                                    </a>
                                    <a href="#" class="dropdown-item mt-3">
                                        <div class="notif-img-agileinfo">
                                            <img src="resources/deshboardplug/images/clone.jpg" class="img-fluid" alt="Responsive image">
                                        </div>
                                        <div class="notif-content-wthree">
                                            <p class="paragraph-agileits-w3layouts py-2">
                                                <span class="text-diff">Steffie</span> Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.</p>
                                            <h6>12 mins ago</h6>
                                        </div>
                                    </a>
                                    <a href="#" class="dropdown-item mt-3">
                                        <div class="notif-img-agileinfo">
                                            <img src="resources/deshboardplug/images/clone.jpg" class="img-fluid" alt="Responsive image">
                                        </div>
                                        <div class="notif-content-wthree">
                                            <p class="paragraph-agileits-w3layouts py-2">
                                                <span class="text-diff">Jack</span> Curabitur non nulla sit amet nisl tempus convallis quis ac lectus.</p>
                                            <h6>1 days ago</h6>
                                        </div>
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#">view all notifications</a>
                                </div>
                            </li>
                            <li class="nav-item dropdown mx-3">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown1" role="button" data-toggle="dropdown" aria-haspopup="true"
                                   aria-expanded="false">
                                    <i class="fas fa-spinner"></i>
                                </a>
                                <div class="dropdown-menu top-grid-scroll drop-2">
                                    <h3 class="sub-title-w3-agileits">Shortcuts</h3>
                                    <a href="#" class="dropdown-item mt-3">
                                        <h4>
                                            <i class="fas fa-chart-pie mr-3"></i>Sed feugiat</h4>
                                    </a>
                                    <a href="#" class="dropdown-item mt-3">
                                        <h4>
                                            <i class="fab fa-connectdevelop mr-3"></i>Aliquam sed</h4>
                                    </a>
                                    <a href="#" class="dropdown-item mt-3">
                                        <h4>
                                            <i class="fas fa-tasks mr-3"></i>Lorem ipsum</h4>
                                    </a>
                                    <a href="#" class="dropdown-item mt-3">
                                        <h4>
                                            <i class="fab fa-superpowers mr-3"></i>Cras rutrum</h4>
                                    </a>
                                </div>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true"
                                   aria-expanded="false">
                                    <i class="far fa-user"></i>
                                </a>
                                <div class="dropdown-menu drop-3">
                                    <div class="profile d-flex mr-o">
                                        <div class="profile-l align-self-center">
                                            <img src="resources/deshboardplug/images/profile.jpg" class="img-fluid mb-3" alt="Responsive image">
                                        </div>
                                        <div class="profile-r align-self-center">
                                            <h3 class="sub-title-w3-agileits">${sessionScope.UserLoggedIn}</h3>
                                            <a href="resources/deshboardplug/mailto:noman.sumon52@gmail.com">noman.sumon52@gmail.com</a>
                                        </div>
                                    </div>
                                    <a href="#" class="dropdown-item mt-3">
                                        <h4>
                                            <i class="far fa-user mr-3"></i>My Profile</h4>
                                    </a>
                                    <a href="#" class="dropdown-item mt-3">
                                        <h4>
                                            <i class="fas fa-link mr-3"></i>Activity</h4>
                                    </a>
                                    <a href="#" class="dropdown-item mt-3">
                                        <h4>
                                            <i class="far fa-envelope mr-3"></i>Messages</h4>
                                    </a>
                                    <a href="#" class="dropdown-item mt-3">
                                        <h4>
                                            <i class="far fa-question-circle mr-3"></i>Faq</h4>
                                    </a>
                                    <a href="#" class="dropdown-item mt-3">
                                        <h4>
                                            <i class="far fa-thumbs-up mr-3"></i>Support</h4>
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="login.html">Logout</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
                <a href="welcome" class="btn btn-primary" id="loginbutton"><button type="button" class="btn btn-default">Home</button></a>
                <div class="container-fluid"
                     >
                    <div class="panel animated fadeInDown delay-05s" id="panel-1">
                        <div class="panel-heading">
                            <span class="lead">Managing Feedback</span>
                        </div>
                        <!-- end panel heading -->
                        <div class="panel-body">
                            <div class="formcontainer ">
                                <form:form commandName="addfeedbackObject" action="addingfeedback"
                                           enctype="multipart/form-data">
                                    <c:if test="${check}">
                                        <div class="form-group">
                                            <form:input class="form-control" Placeholder="feedback Id"
                                                        type="text" path="feedid" required="true"></form:input>
                                            </div>
                                    </c:if>
                                    <c:if test="${!check}">
                                        <div class="form-group">
                                            <form:input class="form-control" Placeholder="feedback Id"
                                                        type="text" path="feedid" readonly="true" required="true"></form:input>
                                            </div>
                                    </c:if>
                                    <div class="form-group">
                                        <select class="form-control" ng-model="feeddate" ng-options="x.passid as x.passname  for x in plo" >
                                            <option value="">-- choose an option --</option>
                                        </select>
                                    </div>
                                    <div class="form-group">
                                        <form:hidden  class="form-control" value="{{feeddate}}" path="passid"></form:hidden>
                                        </div>

                                        <div class="form-group">
                                        <form:input class="form-control" Placeholder="feedback subject"
                                                    type="text" path="subject" required="true"></form:input>
                                        </div>

                                        <div class="form-group">
                                        <form:input class="form-control" Placeholder="feedback detailsfeed"
                                                    type="text" path="detailsfeed" required="true"></form:input>
                                        </div>
                                        <div class="form-group">
                                        <form:input class="form-control" Placeholder="feedback location"
                                                    type="text" path="location" required="true"></form:input>
                                        </div>

                                        <div class="form-group">
                                        <form:input type="text" class="form-control"
                                                    placeholder="feedback date" path="feddate" required="true"></form:input>
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
                    <!-- panel end -->
                    <div class="panel animated fadeInUp delay-05s" id="panel-2">
                        <div class="panel-heading">
                            <span class="lead">Feedback List</span>
                        </div>
                        <p><input type="text" ng-model="test" class="form-control" placeholder="Search Product"></p>
                        <!-- end panel2 heading -->
                        <div class="panel-body">
                            <ul class="list-group">
                                <!--${passengerlist}-->
                                <li class="list-group-item" height="45px"
                                    ng-repeat=" feed in flo| filter:test" >
                                    <table style="width: 100%" >
                                        <tr>
                                            <td>
                                                <!--//Database: feedid, passid, subject, detailsfeed, location, feddate-->                                   
                                                <ul>
                                                    <li><span><b>Feedback Id: </b></span>{{feed.feedid}}</li>
                                                    <li><span><b>Passengers ID </b></span>{{feed.passid}}</li>
                                                    <li><span><b>Feedback subject: </b></span>{{feed.subject}}</li>
                                                    <li><span><b>Feedback details: </b></span>{{feed.detailsfeed}}</li>
                                                    <li><span><b>Feedback location: </b></span>{{feed.location}}</li>
                                                    <li><span><b>Feedback feeddate: </b></span>{{feed.feddate}}</li>
                                                </ul>

                                            <td><a href="editfeedbackbutton?getpid={{feed.feedid}}"><button id="editbuttons"
                                                                                                            type="submit" class="btn btn-primary">Edit</button></a> <a
                                                    href="removeafeedback/{{feed.feedid}}"><button id="removebuttons"
                                                                                               type="button" class="btn btn-danger">Remove</button></a></td>
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



                <!--<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>-->

                <!-- Include Date Range Picker -->
                <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
                <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>

                <script>
                                                                $(document).ready(function () {
                                                                    var date_input = $('input[name="feddate"]'); //our date input has the name "date"
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

