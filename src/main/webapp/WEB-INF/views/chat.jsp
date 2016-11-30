<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
<title>chart</title>
   

   
    <link rel="stylesheet" href="<c:url value='resources/css/bootstrap.min.css'/>"/>

    
    <link rel="stylesheet" href="<c:url value='resources/css/modern-business.css'/>"/>

    <link rel="stylesheet" href="<c:url value='resources/font-awesome/css/font-awesome.min.css'/>"  type="text/css"/>

   
  <style>
body {
    background-image: url("<c:url value='resources/image/new.jpg'/>");
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