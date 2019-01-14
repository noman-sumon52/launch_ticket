<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<html lang="zxx">

    <head>
        <title>Sing up Page</title>
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
        <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
        <!-- //web-fonts -->
    </head>

    <body>
        <h1>
            <span>L</span>aunch.com
            <span>S</span>ign up
            <span>P</span>anel
            <span>H</span>ere</h1>
        <!-- //title -->
        <div class="sub-main-w3">
            <form modelAttribute="urm" action="reguser" method="post">
                <div class="form-style-agile" id="UserName">
                    <label>Username
                        <i class="fa fa-user-plus"></i>
                    </label>
                    <input placeholder="Username"  name="username" type="text" required="true">
                </div>
                <div class="form-style-agile" id="Password">
                    <label>Password
                        <i class="fas fa-unlock-alt"></i>
                    </label>
                    <input placeholder="Password" name="password" type="password" required="true">
                </div>
                <div class="form-style-agile" id="PhoneNumber">
                    <label>Phone Number
                        <i class="fa fa-phone"></i>
                    </label>
                    <input placeholder="Phone Number"  value="+88" name="phone" type="text" required="true">
                </div>
                <div class="form-style-agile" id="Email">
                    <label>Email id
                        <i class="fa fa-envelope-o"></i>
                    </label>
                    <input placeholder="Email" name="emailid" type="password" required="true">
                </div>
                <!-- checkbox -->
                <!-- <div class="wthree-text">
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
                <input type="submit" value="Sing up">
                <br>
            </form>
        </div>


