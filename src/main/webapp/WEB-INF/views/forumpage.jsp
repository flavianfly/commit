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
<br>
<br>
<br>
<br>
<br>
<br>
<div class="container">
    <div class="row">
        <div class="col-md-12">
        <div class="panel-group" id="accordion">
                <div class="panel panel-default">

<h1class="page-header">${forum.question}</h1>

<p><small>-given by </small> <i>${forum.author}</i> on ${forum.creationDate}</p>

<p> ${forum.summery}</p>

<%-- <a class="btn btn-primary" href="deleteForum?id=${forum.forumId}" role="button" >Delete</a></td>
			 --%>


<form:form action="./addreply?id=${forum.forumId}"
									commandName="ans" method="post">
									<form:textarea placeholder="answer" class="form-control input-md" path="ans"></form:textarea>
									<form:input placeholder="user name" class="form-control input-md" path="userid" />
									<form:hidden value="${forum.forumId}" path="forumid" />
									<input class="btn btn-primary btn-lg btn-block" type="submit" value="comment!" />
								</form:form>
								<c:forEach items="${cmts }" var="a">
										<div class="messages">
											<div class="message">

												<img src="" class="avatar">
												<p>
													<strong>${a.userid},<em> posted at
															${a.creationDate}</em></strong> ${a.ans}
											</div>
										</div>
									</c:forEach>



</div>
</div>
</div>
</div>
</div>

<%-- <div class="col-lg-3">
</div>
<div class="col-lg-5">
						
						<div class="form-wrapper">
						<div class="wow fadeInRight" data-wow-duration="2s" data-wow-delay="0.2s">
						
							<div class="panel panel-skin">
							<div class="panel-heading">
									<h3 class="panel-title"><span class="fa fa-pencil-square-o"></span>${b.blogTitle}<small></small></h3>
									</div>
									<div class="panel-body">
									<p> ${b.blogContent }</p>
									<p>${b.blogname}</p>
									<p>${b.blogtag}</p>
									<p>${b.creationDate}</p>
									<form:form action="/addcmd" commendName="cmd">
									<input placeholder="comment"></input><input type="submit" value="comment" class="btn btn-primary btn-lg ">
									
									</form:form>
									</div></div></div>
									</div>
									</div>
									</div>
 --%>
</body>
</html>