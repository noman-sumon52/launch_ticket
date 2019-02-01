<%-- 
    Document   : report
    Created on : Mar 29, 2018, 10:46:50 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Launch Report Page</title>
        <style>
            .error {
                color: #ff0000;
            }

        </style>
    </head>
    <body>
        <h2>Search With Launch Name</h2>

        <form:form method="POST" action="LaunchReport1CabinView" commandName="reportInputForm">

            <table id="reptbl" width="350px" border="1">
                <tr>
                    
                <tr>
                    <td>
                        Enter Launch Name <form:input path="launchname" id="title"/>
                       
                    </td> 
 

                </tr>
                        <input type="submit"  value="Generate Report"  />
            </table>  
        </form:form>
    </body>
</html>


            
        