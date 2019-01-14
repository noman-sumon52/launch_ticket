<%-- 
    Document   : login
    Created on : Nov 20, 2018, 3:44:20 PM
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="zxx">

    <head>
        <title>Login Page</title>
        <!-- Meta tag Keywords -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta charset="UTF-8" />
        <meta name="keywords" content="Classic Sign In Form Responsive Widget,Login form widgets, Sign up Web forms , Login signup Responsive web form,Flat Pricing table,Flat Drop downs,Registration Forms,News letter Forms,Elements"
              />
        <script>
            addEventListener("load", function () {
                setTimeout(hideURLbar, 0);
            }, false);

            function hideURLbar() {
                window.scrollTo(0, 1);
            }
        </script>
        <!-- Meta tag Keywords -->
        <!-- css files -->
        <link rel="stylesheet" href="resources/loginplug/css/style.css" type="text/css" media="all" />
        <!-- Style-CSS -->
        <link rel="stylesheet" href="resources/loginplug/css/fontawesome-all.css">
        <!-- Font-Awesome-Icons-CSS -->
        <!-- //css files -->
        <!-- web-fonts -->
        <link href="resources/loginplug/fonts.googleapis.com/css?family=Reem+Kufi&amp;subset=arabic" rel="stylesheet">
        <link href="resources/loginplug/fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">
        <!-- //web-fonts -->
    </head>

    <body>
        <!-- title -->
        <h1>
            <span>W</span>elcome
            <span>L</span>aunch
            <span>E</span>asy 
            <span>T</span>icket 
            <span>S</span>ystem</h1>
        <!-- //title -->
        <!-- content -->
        <div class="sub-main-w3">
            <form action="perform_login" method="post">
                <div class="form-style-agile">
                    <label>Username
                        <i class="fas fa-user"></i>
                    </label>
                    <input placeholder="Username"  name="usename" type="text" required="">
                </div>
                <div class="form-style-agile">
                    <label>Password
                        <i class="fas fa-unlock-alt"></i>
                    </label>
                    <input placeholder="Password" name="userpassword" type="password" required="">
                </div>
                <!-- checkbox -->
                <!--                <div class="wthree-text">
                                    <ul>
                                        <li>
                                             switch 
                                            <div class="checkout-w3l">
                                                <div class="demo5">
                                                    <div class="switch demo3">
                                                        <input type="checkbox">
                                                        <label>
                                                            <i></i>
                                                        </label>
                                                    </div>
                                                </div>
                                                <a href="#">Stay Signed In</a>
                                            </div>
                                             //checkout 
                                        </li>
                                        <li>
                                            <a href="#">Forgot Password?</a>
                                        </li>
                                    </ul>
                                </div>-->
                <!-- //switch -->
                <input type="submit" value="Log In">
                <a href="signup"> <input type="submit" value="New Users Sign Up Here"></a>
                <br>

            </form>
        </div>

    </body>

</html>