<!DOCTYPE html>
<html lang="en">
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    <head>
        <title>Add From Station</title>
        <!-- Meta Tags -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="utf-8">
        <meta name="keywords" content="Modernize Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
              Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>
        <script src="resources/js/angular.js"></script>
        <script>
            var fromstlist = ${fromstlist};
            console.log(fromstlist);
            angular.module('fstationapp', []).controller('fromStationController',
                    function ($scope) {
                        $scope.fstation = fromstlist;
                        console.log($scope.fstation);
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
    <body ng-app="fstationapp" ng-controller="fromStationController">
        <div class="se-pre-con"></div>
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
                        <a href="welcome.jsp">
                            <i class="fas fa-th-large"></i> Add From Station </a>
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
                                <a href="404.html">404</a>
                            </li>
                            <li>
                                <a href="500.html">500</a>
                            </li>
                            <li>
                                <a href="blank.html">Blank</a>
                            </li>
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
                <section class="forms-section">
                    <form:form commandName="AddFromstationObject" action="addingfromstation"
                               enctype="multipart/form-data">
                        <h4 class="tittle-w3-agileits mb-4">Add Station Table</h4>
                        <c:if test="${check}">
                            <div class="form-group" hidden="true">
                                <form:input class="form-control" Placeholder="Station Id"
                                            type="text" path="fromstationid" required="true"></form:input>
                                </div>
                        </c:if>
                        <c:if test="${!check}">
                            <div class="form-group">
                                <form:input class="form-control" Placeholder="Station Id"
                                            type="text" path="fromstationid" readonly="true" required="true"></form:input>
                                </div>
                        </c:if>
                        <div class="form-group">
                            <form:input class="form-control" Placeholder="From station name"
                                        type="text" path="fromstname" required="true"></form:input>
                            </div>
                        <c:if test="${check}">
                            <button id="editbuttons" type="submit" name="Add"  class="btn btn-primary">Add</button>
                            <button id="removebuttons" type="reset" name="Reset"   class="btn btn-danger">Reset</button>
                        </c:if>
                        <c:if test="${!check}">
                            <button id="editbuttons" type="submit" name="Edit"  class="btn btn-primary">Edit</button>
                            <button id="removebuttons" type="reset" name="Reset" class="btn btn-danger">Reset</button>
                        </c:if>
                    </form:form>
                </section>
                <!-- end panel2 heading -->
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <h4 class="tittle-w3-agileits mb-4">Add Station Table</h4>
                    <thead>
                        <tr>
                            <th>From Station Id</th>
                            <th>From Station Name</th>
                            <th>Edit or Remove</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>From Station Id</th>
                            <th>From Station Name</th>
                            <th>Edit or Remove</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        <tr  ng-repeat="fs in fstation">
                            <td>{{fs.fromstationid}}</td>
                            <td>{{fs.fromstname}}</td>
                            <td>
                                <a href="editaddfromstationbutton?fromstationid={{fs.fromstationid}}"><button id="editbuttons" 
                                                                                                              type="submit" class="btn btn-primary">Edit</button></a> 
                                <a  href="removingfromstationbutton/{{fs.fromstationid}}"><button  id="removebuttons"
                                                                                                   type="button" class="btn btn-danger">Remove</button></a>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <!-- panel2 body end -->
                <nav aria-label="Page navigation example">
                    <ul class="pagination">
                        <li class="page-item"><a class="page-link" href="#">Previous</a></li>
                        <li class="page-item"><a class="page-link" href="#">1</a></li>
                        <li class="page-item"><a class="page-link" href="#">2</a></li>
                        <li class="page-item"><a class="page-link" href="#">3</a></li>
                        <li class="page-item"><a class="page-link" href="#">Next</a></li>
                    </ul>
                </nav>
                <!-- Copyright -->
                <div class="copyright-w3layouts py-xl-3 py-2 mt-xl-5 mt-4 text-center">
                    <p>© 2018 NS GROUP . All Rights Reserved | Design by
                        <a href="#"> Noman </a>
                    </p>
                </div>
                <!--// Copyright -->
            </div>
        </div>
        <!-- Required common Js -->
        <script src='resources/deshboardplug/js/jquery-2.2.3.min.js'></script>
        <!-- //Required common Js -->
        <!-- loading-gif Js -->
        <script src="resources/deshboardplug/js/modernizr.js"></script>
        <script>
                                            //paste this code under head tag or in a seperate js file.
                                            // Wait for window load
                                            $(window).load(function () {
                                                // Animate loader off screen
                                                $(".se-pre-con").fadeOut("slow");
                                                ;
                                            });
        </script>
        <!--// loading-gif Js -->
        <!-- Sidebar-nav Js -->
        <script>
                    $(document).ready(function () {
                        $('#sidebarCollapse').on('click', function () {
                            $('#sidebar').toggleClass('active');
                        });
                    });
        </script>
        <!--// Sidebar-nav Js -->
        <!-- Graph -->
        <script src="resources/deshboardplug/js/SimpleChart.js"></script>
        <script>
                    var graphdata4 = {
                        linecolor: "Random",
                        title: "Thursday",
                        values: [{
                                X: "6",
                                Y: 300.00
                            },
                            {
                                X: "7",
                                Y: 101.98
                            },
                            {
                                X: "8",
                                Y: 140.00
                            },
                            {
                                X: "9",
                                Y: 340.00
                            },
                            {
                                X: "10",
                                Y: 470.25
                            },
                            {
                                X: "11",
                                Y: 180.56
                            },
                            {
                                X: "12",
                                Y: 680.57
                            },
                            {
                                X: "13",
                                Y: 740.00
                            },
                            {
                                X: "14",
                                Y: 800.89
                            },
                            {
                                X: "15",
                                Y: 420.57
                            },
                            {
                                X: "16",
                                Y: 980.24
                            },
                            {
                                X: "17",
                                Y: 1080.00
                            },
                            {
                                X: "18",
                                Y: 140.24
                            },
                            {
                                X: "19",
                                Y: 140.58
                            },
                            {
                                X: "20",
                                Y: 110.54
                            },
                            {
                                X: "21",
                                Y: 480.00
                            },
                            {
                                X: "22",
                                Y: 580.00
                            },
                            {
                                X: "23",
                                Y: 340.89
                            },
                            {
                                X: "0",
                                Y: 100.26
                            },
                            {
                                X: "1",
                                Y: 1480.89
                            },
                            {
                                X: "2",
                                Y: 1380.87
                            },
                            {
                                X: "3",
                                Y: 1640.00
                            },
                            {
                                X: "4",
                                Y: 1700.00
                            }
                        ]
                    };
                    $(function () {
                        $("#Hybridgraph").SimpleChart({
                            ChartType: "Hybrid",
                            toolwidth: "50",
                            toolheight: "25",
                            axiscolor: "#E6E6E6",
                            textcolor: "#6E6E6E",
                            showlegends: false,
                            data: [graphdata4],
                            legendsize: "140",
                            legendposition: 'bottom',
                            xaxislabel: 'Hours',
                            title: 'Weekly Profit',
                            yaxislabel: 'Profit in $'
                        });
                    });
        </script>
        <!-- Bar-chart -->
        <script src="resources/deshboardplug/js/rumcaJS.js"></script>
        <script src="resources/deshboardplug/js/example.js"></script>
        <!-- Calender -->
        <script src="resources/deshboardplug/js/moment.min.js"></script>
        <script src="resources/deshboardplug/js/pignose.calender.js"></script>
        <script>
                    //<![CDATA[
                    $(function () {
                        $('.calender').pignoseCalender({
                            select: function (date, obj) {
                                obj.calender.parent().next().show().text('You selected ' +
                                        (date[0] === null ? 'null' : date[0].format('YYYY-MM-DD')) +
                                        '.');
                            }
                        });

                        $('.multi-select-calender').pignoseCalender({
                            multiple: true,
                            select: function (date, obj) {
                                obj.calender.parent().next().show().text('You selected ' +
                                        (date[0] === null ? 'null' : date[0].format('YYYY-MM-DD')) +
                                        '~' +
                                        (date[1] === null ? 'null' : date[1].format('YYYY-MM-DD')) +
                                        '.');
                            }
                        });
                    });
                    //]]>
        </script>
        <!--// Calender -->
        <!-- profile-widget-dropdown js-->
        <script src="resources/deshboardplug/js/script.js"></script>
        <!--// profile-widget-dropdown js-->
        <!-- Count-down -->
        <script src="resources/deshboardplug/js/simplyCountdown.js"></script>
        <link href="resources/deshboardplug/css/simplyCountdown.css" rel='stylesheet' type='text/css' />
        <script>
                    var d = new Date();
                    simplyCountdown('simply-countdown-custom', {
                        year: d.getFullYear(),
                        month: d.getMonth() + 2,
                        day: 25
                    });
        </script>
        <!--// Count-down -->
        <!-- pie-chart -->
        <script src='resources/deshboardplug/js/amcharts.js'></script>
        <script>
                    var chart;
                    var legend;

                    var chartData = [{
                            country: "Lithuania",
                            value: 260
                        },
                        {
                            country: "Ireland",
                            value: 201
                        },
                        {
                            country: "Germany",
                            value: 65
                        },
                        {
                            country: "Australia",
                            value: 39
                        },
                        {
                            country: "UK",
                            value: 19
                        },
                        {
                            country: "Latvia",
                            value: 10
                        }
                    ];

                    AmCharts.ready(function () {
                        // PIE CHART
                        chart = new AmCharts.AmPieChart();
                        chart.dataProvider = chartData;
                        chart.titleField = "country";
                        chart.valueField = "value";
                        chart.outlineColor = "";
                        chart.outlineAlpha = 0.8;
                        chart.outlineThickness = 2;
                        // this makes the chart 3D
                        chart.depth3D = 20;
                        chart.angle = 30;

                        // WRITE
                        chart.write("chartdiv");
                    });
        </script>
        <!--// pie-chart -->
        <!-- dropdown nav -->
        <script>
                    $(document).ready(function () {
                        $(".dropdown").hover(
                                function () {
                                    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                                    $(this).toggleClass('open');
                                },
                                function () {
                                    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                                    $(this).toggleClass('open');
                                }
                        );
                    });
        </script>
        <!-- //dropdown nav -->
        <!-- Js for bootstrap working-->
        <script src="resources/deshboardplug/js/bootstrap.min.js"></script>
        <!-- //Js for bootstrap working -->
    </body>
</html>