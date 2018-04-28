<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html lang="en">

<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>SmartSyndicat</title>
		
	<link type="text/css" href="<c:url value='/static/bootstrap/css/bootstrap.min.css' />" rel="stylesheet"></link>
	<link type="text/css" href="<c:url value='/static/bootstrap/css/bootstrap-responsive.min.css' />"  rel="stylesheet"></link>
	
    <link href="<c:url value='/static/css/theme.css' />"  rel="stylesheet"></link>
	<link href="<c:url value='/static/images/icons/css/font-awesome.css' />" rel="stylesheet"></link>
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
    
	</head>
<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
					<i class="icon-reorder shaded"></i>
				</a>

			  	<a class="brand" href="acceuil.html">
			  		<img src="<c:url value='/static/images/syn2.png' />" width="40px" >
			  	</a>

				<div class="nav-collapse collapse navbar-inverse-collapse">
					<ul class="nav nav-icons">
						<li class="active"><a href="#">
							<i class="icon-envelope"></i>
						</a></li>
						<li><a href="#">
							<i class="icon-eye-open"></i>
						</a></li>
					</ul>

					<form class="navbar-search pull-left input-append" action="#">
						<input type="text" class="span3">
						<button class="btn" type="button">
							<i class="icon-search"></i>
						</button>
					</form>
				
					<ul class="nav pull-right">
						<li class="nav-user dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							
								<img src="<c:url value='/static/images/user.png' />" class="nav-avatar" />
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
							<li><a href="#"><strong>${loggedinuser}</strong></a></li>
								<li><a href="Profile.html">Profil</a></li>
								<li><a href="parametres.html">Paramétres</a></li>
								<li><a href="<c:url value="/logout" />">Logout</a></li>
							</ul>
						</li>
					</ul>
				</div><!-- /.nav-collapse -->
			</div>
		</div><!-- /navbar-inner -->
	</div><!-- /navbar -->



	<div class="wrapper">
		<br><br>
		<div class="container">
			<div class="row">
				<div class="span3">
					<div class="sidebar">

						<ul class="widget widget-menu unstyled">
							<li>
								<a href="acceuil.html">
									<i class="menu-icon icon-bullhorn"></i>
									News Feed
								</a>
							</li>
							<li>
								<a href="message.html">
									<i class="menu-icon icon-inbox"></i>
									Messages
									<b class="label green pull-right">11</b>
								</a>
							</li>
							
							<li>
								<a href="task.html">
									<i class="icon-eye-open"></i>
									Notifications
									<b class="label orange pull-right">19</b>
								</a>
							</li>
						</ul><!--/.widget-nav-->

						<ul class="widget widget-menu unstyled">
                                <li><a href="voisins.html"><i class="menu-icon icon-tasks "></i> Mes Voisins </a></li>
                                <li><a href="Profile.html"><i class="menu-icon icon-book"></i>Mon profil </a></li>
                                <li><a href="evenements.html"><i class="menu-icon icon-paste"></i>Evénements </a></li>
                            
                            </ul><!--/.widget-nav-->

						<ul class="widget widget-menu unstyled">
							  <li><a href="parametres.html"><i class="menu-icon icon-cog "></i> Paramétres</a></li>
								<li><a href="#">
									<i class="menu-icon icon-signout"></i>
									Logout
								</a>
							</li>
						</ul>

				

					
					</div><!--/.sidebar-->
				</div><!--/.span3-->


				<div class="span9">
					<div class="content">

						<div class="module">
							<div class="module-head">
								<h3>Fil d'actualités </h3>
							</div>
							<div class="module-body">
								<div class="stream-composer media">
									<a href="#" class="media-avatar medium pull-left">
										<img src="<c:url value='/static/images/user.png' />">
									</a>
									<div class="media-body">
										<div class="row-fluid">

<input type="hidden" value="${loggedinuser}" name="user" id="user"/>



<%String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String dbName = "websystique";
String userId = "root";
String password = ""; 
String idm=request.getParameter("user");
String s="souhakh";


try {
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	ResultSet resultSet1 = null;
connection = DriverManager.getConnection(
connectionUrl + dbName, userId, password);
statement = connection.createStatement();
String sql = "SELECT id FROM app_user WHERE sso_id='"+s+"' ";

resultSet1 = statement.executeQuery(sql);
while (resultSet1.next()) {



%>


<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>								
			
		 <form action="" method="post">
	<table>
		<tr>
			
		</tr>
		<tr>

			
			<td><input  type="hidden" value='' /></td>
		</tr>
		<tr>
			<td></td>
			
			<textarea name="contenuetxt" class="span12" style="height: 70px; resize: none;" path=""></textarea>
		</tr>
			<div class="clearfix">
					<input name="action" type="submit" value="Partager" class="btn btn-primary pull-right">
						<div class="image-upload">
                    <label for="file-input">
                         <img src="<c:url value='/static/images/cam.png' />"/>
                    </label>

    <input id="file-input" type="file" name="contenufile" hidden/>
</div>
				
			<input   value="1" type="hidden"/></td>
		
	</table>
</form>
										</div>
									</div>
								</div>


								
			

								<div class="stream-list">
									<div class="media stream new-update">
										<a href="#">
											<i class="icon-refresh shaded"></i>
											
										</a>
									</div>


<%
String driverName1 = "com.mysql.jdbc.Driver";
String connectionUrl1 = "jdbc:mysql://localhost:3306/";
String dbName1 = "websystique";
String userId1 = "root";
String password1 = ""; 

try {
	Connection connection = null;
	Statement statement = null;
	ResultSet resultSet = null;
	ResultSet resultSet1 = null;
connection = DriverManager.getConnection(
connectionUrl1 + dbName1, userId1, password1);
statement = connection.createStatement();
String sql = "SELECT idstatut, contenuetxt, contenufile, datestatut, iduser, app_user.email ,app_user.last_name , app_user.first_name FROM statut, app_user where app_user.id=statut.iduser ";

resultSet = statement.executeQuery(sql);
while (resultSet.next()) {

String p = resultSet.getString("statut.contenufile");
	
%>

									<div class="media stream">
										<a href="#" class="media-avatar medium pull-left">
										
						
										</a>
										<div class="media-body">
											<div class="stream-headline">
												<h5 class="stream-author">
												
													<%=resultSet.getString("app_user.first_name")%>
                                                    <%=resultSet.getString("app_user.last_name")%>
													<small><%=resultSet.getString("statut.datestatut")%></small>
												</h5><br>
												
												<div class="stream-text">
													 <%=resultSet.getString("statut.contenuetxt")%> 
                                                </div>
                                                	
                                               
											<div class="stream-attachment photo">
													<div class="responsive-photo">
													
														
														</div></div>
														
													
												</div>	</div>
												
											
											
	
					</div>
			
									<%
}

} catch (Exception e) {
e.printStackTrace();
}
%>


								
								</div><!--/.stream-list-->
							</div><!--/.module-body-->
						</div><!--/.module-->
						
					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->

	<div class="footer">
		<div class="container">
			 

			<b class="copyright">&copy; 2014 Edmin - EGrappler.com </b> All rights reserved.
		</div>
	</div>
<script type="text/javascript" src="<c:url value='/static/scripts/jquery-1.9.1.min.js' />" ></script>
<script type="text/javascript" src="<c:url value='/static/scripts/jquery-ui-1.10.1.custom.min.js' />" ></script>
<script type="text/javascript" src="<c:url value='/static/bootstrap/js/bootstrap.min.js' />" ></script>
	
</body>