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
<link rel="stylesheet" href="<c:url value='resources/css/bootstrap.min.css'/>"/>

    
    <link rel="stylesheet" href="<c:url value='resources/css/modern-business.css'/>"/>

    <link rel="stylesheet" href="<c:url value='resources/font-awesome/css/font-awesome.min.css'/>"  type="text/css"/>
<script>
var l=${blogList};
angular.module('myapp',[]).controller('blogcontroller',function($scope)
 {
	$scope.aa=l;
	});
</script>
   
  <style>
body {
    background-image: url("<c:url value='resources/image/new.jpg'/>");
}
</style>

</head>
<body>
<br>
<br>
<br>
<br>
    <!-- Navigation -->
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
<center>
			<br> <br> <br> <br> <br> <br>

			<div class="col-lg-3"></div>
			<div class="col-lg-5">

				<div class="form-wrapper">
					<div class="wow fadeInRight" data-wow-duration="2s"
						data-wow-delay="0.2s">

						<div class="panel panel-skin">
							<div class="panel-heading">
								
							</div>
							<div class="panel-body">
								<form:form action="./updateBlog?id=${b.blogId}" commandName="blo" role="form"
									class="lead">
									<div class="row">
										 <div class="col-xs-12 col-sm-12 col-md-12">
												<div class="form-group">
													<label>BLOG ID</label>
													<form:input type="text" path="blogId"  readonly="true" value="${b.blogId}" class="form-control input-md"/>
												</div>
											</div> 
										<div class="col-xs-12 col-sm-12 col-md-12">
											<div class="form-group">
												<label>NAME</label>
												<form:input type="text" path="blogname" value="${b.blogname}"
													class="form-control input-md" />
													<form:errors path="blogname" class="error"/>
											</div>
										</div>

										<div class="col-xs-12 col-sm-12 col-md-12">
											<div class="form-group">
												<label>TITLE</label>
												<form:input type="text" path="blogTitle" value="${b.blogTitle}"
													class="form-control input-md" />
													<form:errors path="blogTitle" class="error"/>
											</div>
										</div>

										<div class="row">
											<div class="col-xs-12 col-sm-12 col-md-12">
												<div class="form-group">
													<label>blog</label>

													<form:input path="blogContent" value="${b.blogContent}"
														class="form-control input-md" />
														<form:errors path="blogContent" class="error"/>
												</div>
											</div>

										</div>
										<div class="col-xs-12 col-sm-12 col-md-12">
											<div class="form-group">
												<label>TAGS</label>
												<form:input type="text" path="blogtag" value="${b.blogtag}" 
													class="form-control input-md" />
													
											</div>
										</div>



										<input type="submit" value="post"
											class="btn btn-primary btn-lg btn-block"> 

										
									</div>

								</form:form>
								</div>
								</div>
								</div>
								</div>
								</div>
								</center>
								</body>
								</html>