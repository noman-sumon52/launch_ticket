<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Invoice - Organic Shopping</title>
        <style type="text/css">
            #emailinvoicebtn, #continuebutton {
                background-color: #9ccc65;
                color: #ffffff;
                background: linear-gradient(to bottom, #aed581 50%, #9ccc65 50%);
            }

            #emailinvoicebtn:HOVER, #continuebutton:HOVER {
                color: #ffffff;
                background-color: #aed581;
                background: linear-gradient(to bottom, #9ccc65 50%, #8bc34a 50%);
            }

            #emailbox:FOCUS {
                border: 2px solid #9ccc65;
                border-radius: 5px;
            }

            #welldiv {
                background-color: #dcedc8;
                padding: 20px;
                display: inline-block;
            }

            #prodimage {
                width: 100px;
                height: 125px;
            }

            #jumbotrondiv {
                background-color: #dcedc8;
                width: 80%;
                border-radius:10px;
            }

            .form-control:FOCUS {
                border: 2px solid #9ccc65;
            }
        </style>
        <script src="resources/js/angular.js"></script>

        <script type="text/javascript">
            var cartproductlist = ${itemsincart};
            var addressjson = ${addressobject};
            angular.module('organocartpackage', []).controller('InvoiceController',
                    function ($scope) {
                        $scope.citems = cartproductlist;
                        $scope.address = addressjson;
                        console.log($scope.citems);
                    });
        </script>
    </head>
    <jsp:include page="header.jsp"></jsp:include>
        <body ng-app="organocartpackage" ng-controller="InvoiceController">
        <c:if test="${bill}">
            <div class="row" style="min-height: 400px;">
                <div id="welldiv" style="border-radius: 5px;"
                     class="col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
                    <div class="row">
                        <div class="col-xs-4 col-sm-4 col-md-4">
                            <address>
                                <strong>{{address.emailid}}</strong> <br>
                                {{address.addresslineone}}, <br> {{address.addresslinetwo}},<br>
                                {{address.city}} - {{address.statename}}- {{address.country}} <br> Phone :
                                {{address.phone}}
                            </address>
                        </div>
                        <div class="col-xs-4 col-sm-4 col-md-4 text-right">
                            <p>
                                <em>Date:${sessionScope.Date}</em>
                            </p>
                        </div>
                    </div>
                    <div class="row">
                        <div class="text-center">
                            <h1 style="color: #9ccc65">
                                <em>Invoice</em>
                            </h1>
                        </div>

                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>Product</th>
                                    <th></th>

                                    <th>Quantity</th>
                                    <th class="text-center">Price</th>
                                    <th class="text-center">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr ng-repeat="c in citems">
                                    <td>
                                        <img id="prodimage" alt="product image"
                                             src="resources/pimage/{{c.pid}}.jpg" class="img-rounded">
                                        <h4><em>{{c.pname}}</em></h4>
                                    </td>
                                    <td></td>

                                    <td class="col-md-1" style="text-align: center">{{c.qty}}</td>
                                    <td class="col-md-1 text-center">Tk.{{c.price}}</td>
                                    <td class="col-md-1 text-center">Tk.{{c.total}}</td>
                                </tr>

                                <tr>
                                    <td></td>
                                    <td></td>

                                    <td class="text-right"><h4>
                                            <strong>Grand</strong>
                                        </h4></td>
                                    <td class="text-right">
                                        <h4>
                                            <strong>Total:</strong>
                                        </h4>
                                    </td>
                                    <td class="text-center text-danger"><h4>
                                            <strong>Tk.${sessionScope.grandtotal}</strong>
                                        </h4></td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <a href="confirmorder?getaddressid={{address.addressid}}">
                        <button id="editbuttons" type="submit" class="btn">Confirm Order</button>
                    </a>
                </div>
            </div>
        </c:if>
        <c:if test="${!bill}">
            <div class="jumbotron container h4" id="jumbotrondiv" align="center"
                 style="min-height: 600px;">
                <c:if test="${success}">
                    Thanks for shopping with us.<br>                    
                    Happy Shopping with Organocart<br>
                    <br>
                    Your Order number is ${orderid}
                    <a href="buyproductpage" type="button" id="continuebutton"
                       class="btn"><span class="glyphicon glyphicon-shopping-cart"></span>
                        Continue Shopping</a>
                </c:if>
                <c:if test="${!success}"><h3>Sorry For the inconvenience.</h3> <br>
                    Please try again later !!! Continue shopping until then<br>
                    <br>
                    <br>
                    <a href="buyproductpage" type="button" id="continuebutton"
                       class="btn"><span class="glyphicon glyphicon-shopping-cart"></span>
                        Continue Shopping</a>
                </c:if>
            </div>
        </c:if>
    </body>
    <jsp:include page="footer.jsp"></jsp:include>

</html>
