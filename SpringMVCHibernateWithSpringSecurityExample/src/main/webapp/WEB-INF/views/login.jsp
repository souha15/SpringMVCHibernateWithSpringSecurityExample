<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>SyndicatManager</title>
		
	<link type="text/css" href="<c:url value='/static/bootstrap/css/bootstrap.min.css' />" rel="stylesheet"></link>
	<link type="text/css" href="<c:url value='/static/bootstrap/css/bootstrap-responsive.min.css' />"  rel="stylesheet"></link>
			<link href="<c:url value='/static/css/bootstrap.css' />"  rel="stylesheet"></link>
			<link href="<c:url value='/static/css/theme.css' />"  rel="stylesheet"></link>
	<link href="<c:url value='/static/images/icons/css/font-awesome.css' />" rel="stylesheet"></link>
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
		<link rel="stylesheet" type="text/css" href="//cdnjs.cloudflare.com/ajax/libs/font-awesome/4.2.0/css/font-awesome.css" />
	</head>

	<body>
			<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				<a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
					<i class="icon-reorder shaded"></i>
				</a>

			  	<a class="brand" href="#">
			  		<img src="<c:url value='/static/images/syn2.png' />" width="120px" >
			  		
			  	</a>
			  		<br>
					<ul class="nav pull-right">
					<c:url var="loginUrl" value="/login" />
						<form action="${loginUrl}" method="post" >
						<c:if test="${param.error != null}">
								<div class="alert alert-danger">
									<p>Invalid username and password.</p>
								</div>
							</c:if>
							<c:if test="${param.logout != null}">
								<div class="alert alert-success">
									<p>You have been logged out successfully.</p>
								</div>
							</c:if>
						<b><p>Adresse e-mail ou mobile &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;  Mot de passe </p>	</b>
						<li><input type="text" class="span2"  name="ssoId" placeholder="Enter Username" required>&nbsp;&nbsp;&nbsp;&nbsp;
							
						<input type="password" class="span2"  name="password" placeholder="Enter Password" required>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							<input type="hidden" name="${_csrf.parameterName}"  value="${_csrf.token}" />
						<input  width="50px" type="submit" value="Log in " class="btn btn-primary"></li>
						<input type="checkbox" id="rememberme" name="remember-me"> Remember Me</label>
						
                        </form>
                        
					</ul>
						
				</div><!-- /.nav-collapse -->
			</div>
		</div><!-- /navbar-inner -->
	</div><!-- /navbar -->

	<div class="wrapper">
		<div class="container">

			<div class="row">
				<div id="ss">
					<br>
					<form class="form-vertical" id="ss" >
						<br>
                            

							<h3 class="colorh">Creer un compte</h3>
							<small class="smalltext">C’est gratuit (et ça le restera toujours).</small>
						
						<div class="module-body">
							<div class="control-group">
								<div class="controls row-fluid">
                                <input class="span12" type="text" id="inputEmail" placeholder="Nom" name="nom"><br><br>
									<input class="span12" type="text" id="inputEmail" placeholder="Prenom" name="prenom"><br><br>
                                    <input class="span12" type="email" id="inputEmail" placeholder="Email" name="mail"><br><br>
                                    <input class="span12" type="text" id="inputEmail" placeholder="Mobile" name="tel"><br><br>
                                   <select class="span12" name="genre">
                                   	  <optgroup label="Vous étes :">
                                     <option value="proprietaire">Proprietaire</option>
                                     <option value="locataire">Locataire</option>
                                      </optgroup>
                                   </select>
										


								</div>
							</div>
							<div class="control-group">
								<div class="controls row-fluid">
									<input class="span12" type="password" id="inputPassword" placeholder="Mot de passe" name="mdp1"
                                   ><br><br>
                                    <input class="span12" type="password" id="inputPassword" placeholder="Confirmer mot de passe" name="mdp2" onBlur="verifmdp(this)"><br><br><span id="erreur" style="display: none" > Ce ne sont pas les mêmes mots de passe !! </span>
                                    
<input type="radio" name="gender" value="male">Homme &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  <input type="radio" name="gender" value="female"> Femme<br>                                    
								</div>
						
								<button type="submit" class="btn btn-primary pull-right" >Create account</button>
						
					</form>
				</div>
			</div>
		</div>
	</div><!--/.wrapper-->

	<div class="footer">
		<div class="container">
			 

			<b class="copyright">&copy; 2018 SmartSyndicat -SmartSyndicatULT.com </b> All rights reserved.
		</div>
	</div>
<script src="/static/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="/static/scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="/static/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
   
	</body>
</html>