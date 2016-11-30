<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
<title>chart</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.6/angular.min.js"></script>

<script>
var c=${pdata};
   //var app=angular.module('pdata',[]);
   angular.module('myapp',[]).controller('Blogcontroller',function($scope)
   {
	 //$http.get("addProduct")
	 //.then(function (response){$scope.names=response.data.records;});
	   $scope.aa=c;
	   
   });
</script>
   

   
    <link rel="stylesheet" href="<c:url value='resources/css/bootstrap.min.css'/>"/>

    
    <link rel="stylesheet" href="<c:url value='resources/css/modern-business.css'/>"/>

    <link rel="stylesheet" href="<c:url value='resources/font-awesome/css/font-awesome.min.css'/>"  type="text/css"/>

   
  <style>
body {
    background-image: url("<c:url value='resources/image/new.jpg'/>");
}
table#acrylic {
            border-collapse: separate;
            background: #fff;
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
            margin: 50px auto;
            -moz-box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
            -webkit-box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
            box-shadow: 0px 0px 5px rgba(0, 0, 0, 0.3);
            cursor: pointer;
        }
        
        #acrylic thead {
            -moz-border-radius: 5px;
            -webkit-border-radius: 5px;
            border-radius: 5px;
        }
        
        #acrylic thead th {
            font-family: 'Roboto';
            font-size: 16px;
            font-weight: 400;
            color: #fff;
            text-shadow: 1px 1px 0px rgba(0, 0, 0, 0.5);
            text-align: left;
            padding: 20px;
            background-size: 100%;
            background-image: -webkit-gradient(linear, 50% 0%, 50% 100%, color-stop(0%, #646f7f), color-stop(100%, #4a5564));
            background-image: -moz-linear-gradient(#646f7f, #4a5564);
            background-image: -webkit-linear-gradient(#646f7f, #4a5564);
            background-image: linear-gradient(#646f7f, #4a5564);
            border-top: 1px solid #858d99;
        }
        
        #acrylic thead th:first-child {
            -moz-border-top-right-radius: 5px;
            -webkit-border-top-left-radius: 5px;
            border-top-left-radius: 5px;
        }
        
        #acrylic thead th:last-child {
            -moz-border-top-right-radius: 5px;
            -webkit-border-top-right-radius: 5px;
            border-top-right-radius: 5px;
        }
        
        #acrylic tbody tr td {
            font-family: 'Open Sans', sans-serif;
            font-weight: 400;
            color: #5f6062;
            font-size: 13px;
            padding: 20px 20px 20px 20px;
            border-bottom: 1px solid #e0e0e0;
        }
        
        #acrylic tbody tr:nth-child(2n) {
            background: #f0f3f5;
        }
        
        #acrylic tbody tr:last-child td {
            border-bottom: none;
        }
        
        #acrylic tbody tr:last-child td:first-child {
            -moz-border-bottom-right-radius: 5px;
            -webkit-border-bottom-left-radius: 5px;
            border-bottom-left-radius: 5px;
        }
        
        #acrylic tbody tr:last-child td:last-child {
            -moz-border-bottom-right-radius: 5px;
            -webkit-border-bottom-right-radius: 5px;
            border-bottom-right-radius: 5px;
        }
        
        #acrylic tbody:hover > tr td {
            filter: progid: DXImageTransform.Microsoft.Alpha(Opacity=50);
            opacity: 0.5;
        }
        
        #acrylic tbody:hover > tr:hover td {
            text-shadow: none;
            color: #2d2d2d;
            filter: progid: DXImageTransform.Microsoft.Alpha(enabled=false);
            opacity: 1;
            transition: 0.2s all;
        }
	</style>


</head>
<body>
 <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">Startchat</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="chat">Home</a>
                    </li>
                    <li>
                        <a href="#">chat</a>
                    </li>
                    
                    <li>
                        <a href="blog">blog</a>
                    </li>
                    <li>
                        <a href="forum">forum</a>
                    </li>
					<li>
                        <a href="login">login</a>
                    </li>
					<li>
                        <a href="signup">signup</a>
                    </li>
                   
                   
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>
	 <!-- Header Carousel -->
	 <br>
	 <br>
	 <br><br>
	 
	 <centre>
	<div>
	<div class="wrapper">
	
<div class="container" ng-app="myapp" ng-controller="Blogcontroller">

<!-- <div ng-repeat="bb in aa"> -->

<p>Type a letter in the input field:</p>

<p><input type="text" class="form-control" placeholder="Search...." ng-model="test"></p>
	
<table id="acrylic">
  <tr>
    <th>Title</th>
    <th>blog</th>
    <th>date</th>
    <th>tag</th>
  </tr>
 
<%--  <c:forEach items="${blogList}" var="b">
 <tr>
 <td data-th="Driver details">${b.blogname}</td>
 <td>${b.blogTitle}</td>
 <td>${b.creationDate}</td>
 <td><a href="blogpage?id=${b.blogId}">see</a></td>
 </tr>
 </c:forEach> --%>
 <tr ng-repeat="b in aa | filter:test">
					<td>{{b.blogname}}</td>
					<td>{{b.blogTitle}}</td>
					<td>{{b.creationDate}}</td>
					<td><a href="blogpage?id={{b.blogId}}">see</a></td>
 
 </table>
 </div>
 </div>
 </div>
 </centre>
   	<br><br>
	<br>
	<br><br><br><br>
	<br>
	<br><br><br><br>
	<br>
	<br><br><br><br>
	<br>
	<br><br>
	<center>
	 <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </footer>
		</center>

    
    <!-- /.container -->

    <!-- jQuery -->
    
    
    <script src="<c:url value='resources/js/jquery.js'/>" > </script>

    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value='resources/js/bootstrap.min.js'/>" > </script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

	

</body>
</html>