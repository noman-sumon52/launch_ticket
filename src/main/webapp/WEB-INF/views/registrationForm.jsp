<%-- 
    Document   : registrationForm
    Created on : Jan 1, 2019, 3:18:07 AM
    Author     : noman
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!-- registerBox starts here -->
    <div id="registerBox">
        <form id="registerForm">
            <fieldset id="body">
                <h4>Create Account</h4>
                <fieldset>
                    <div class="form-group">
                        <input type="text" class="form-control" id="name" name="name" placeholder="Your Name">
                    </div>
                </fieldset>
                <fieldset>
                    <div class="form-group">
                        <input type="text" class="form-control jqNos" id="mobile" name="mobile" placeholder="Mobile Number" maxlength="11">
                    </div>
                </fieldset>
                <fieldset>
                    <div class="form-group">
                        <input type="password" class="form-control" id="pass" name="pass" placeholder="Enter Password">
                    </div>
                </fieldset>
                <fieldset>
                    <div class="form-group">
                        <input type="password" class="form-control" id="confpass" name="confpass" placeholder="Re-type Password">
                    </div>
                </fieldset>

                <label id="remember" for="registerterms"><input type="checkbox" id="registerterms" /> I agree with the <a href="/terms-of-use" target="_blank">Terms of Use</a></label>
                <br />
                <button class="btn btn-default btn-sm btn-block" type="submit">Create Account</button>
                <button id="registered" type="button" class="btn btn-primary btn-sm btn-block">Already Registered? Login</button>

            </fieldset>
        </form>
    </div>
    <!-- registerBox ends here -->
    </body>
</html>
