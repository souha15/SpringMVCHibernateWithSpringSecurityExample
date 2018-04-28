<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
			  		<img src="/static/images/syn2.png" width="40px" >
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
								<img src="/static/images/user.png" class="nav-avatar" />
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li><a href="Profile.html">Profil</a></li>
								<li><a href="parametres.html">Paramétres</a></li>
								<li><a href="#">Logout</a></li>
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
										<img src="/static/images/user.png">
									</a>
									<div class="media-body">
										<div class="row-fluid">
											<form>
											<textarea class="span12" style="height: 70px; resize: none;"></textarea>
										</div>
										<div class="clearfix">
											<input type="submit" value="Partager" class="btn btn-primary pull-right">
											</form>
											<a href="#" class="btn btn-small" rel="tooltip" data-placement="top" data-original-title="Upload a photo">
												<i class="icon-camera shaded"></i>
											</a>
											<a href="#" class="btn btn-small" rel="tooltip" data-placement="top" data-original-title="Upload a video">
												<i class="icon-facetime-video shaded"></i>
											</a>
											<a href="#" class="btn btn-small" rel="tooltip" data-placement="top" data-original-title="Pin your location">
												<i class="icon-map-marker shaded"></i>
											</a>
										</div>
									</div>
								</div>

								<div class="stream-list">
									<div class="media stream new-update">
										<a href="#">
											<i class="icon-refresh shaded"></i>
											11 updates
										</a>
									</div>
									<div class="media stream">
										<a href="#" class="media-avatar medium pull-left">
											<img src="/static/images/user.png">
										</a>
										<div class="media-body">
											<div class="stream-headline">
												<h5 class="stream-author">
													John Donga 
													<small>08 July, 2014</small>
												</h5>
												<div class="stream-text">
													 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type. 
												
                                              
                                                
                                                
                                               

                                                
                                                </div>
												<div class="stream-attachment photo">
													<div class="responsive-photo">
														<img src="images/img.jpg" />
													</div>
												</div>
											</div><!--/.stream-headline-->

											<div class="stream-options">
												<a href="#" class="btn btn-small">
													<i class="icon-thumbs-up shaded"></i>
													Like
												</a>
												<a href="#" class="btn btn-small">
													<i class="icon-reply shaded"></i>
													Reply
												</a>
												<a href="#" class="btn btn-small">
													<i class="icon-retweet shaded"></i>
													Repost
												</a>
											</div>
										</div>
									</div><!--/.media .stream-->
									<div class="media stream">
										<a href="#" class="media-avatar medium pull-left">
											<img src="images/user.png">
										</a>
										<div class="media-body">
											<div class="stream-headline">
												<h5 class="stream-author">
													John Donga 
													<small>08 July, 2014</small>
												</h5>
												<div class="stream-text">
													 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type. 
												</div>
												<div class="stream-attachment video">
													<div class="responsive-video">
														
                                                        
                                                        <iframe src="//player.vimeo.com/video/20630217" width="560" height="315" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> <p><a href="http://vimeo.com/20630217">Google Car</a> from <a href="http://vimeo.com/user3524956">Henk Rogers</a> on <a href="https://vimeo.com">Vimeo</a>.</p>
                                                        
                                                        
													</div>
												</div>
											</div><!--/.stream-headline-->

											<div class="stream-options">
												<a href="#" class="btn btn-small">
													<i class="icon-thumbs-up shaded"></i>
													Like
												</a>
												<a href="#" class="btn btn-small">
													<i class="icon-reply shaded"></i>
													Reply
												</a>
												<a href="#" class="btn btn-small">
													<i class="icon-retweet shaded"></i>
													Repost
												</a>
											</div>
										</div>
									</div><!--/.media .stream-->

									<div class="media stream">
										<a href="#" class="media-avatar medium pull-left">
											<img src="images/user.png">
										</a>
										<div class="media-body">
											<div class="stream-headline">
												<h5 class="stream-author">
													John Donga 
													<small>08 July, 2014</small>
												</h5>
												<div class="stream-text">
													 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type. 
												</div>
											</div><!--/.stream-headline-->

											<div class="stream-options">
												<a href="#" class="btn btn-small">
													<i class="icon-thumbs-up shaded"></i>
													Like
												</a>
												<a href="#" class="btn btn-small">
													<i class="icon-reply shaded"></i>
													Reply
												</a>
												<a href="#" class="btn btn-small">
													<i class="icon-retweet shaded"></i>
													Repost
												</a>
											</div>

											<div class="stream-respond">
												<div class="media stream">
													<a href="#" class="media-avatar small pull-left">
														<img src="images/user.png">
													</a>
													<div class="media-body">
														<div class="stream-headline">
															<h5 class="stream-author">
																John Donga 
																<small>10 July 14</small>
															</h5>
															<div class="stream-text">
																Lorem Ipsum is simply dummy text of the printing and typesetting industry.
															</div>
														</div><!--/.stream-headline-->
													</div>
												</div><!--/.media .stream-->
												<div class="media stream">
													<a href="#" class="media-avatar small pull-left">
														<img src="images/user.png">
													</a>
													<div class="media-body">
														<div class="stream-headline">
															<h5 class="stream-author">
																John Donga 
																<small>12 July 14</small>
															</h5>
															<div class="stream-text">
																Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.
															</div>
														</div><!--/.stream-headline-->
													</div>
												</div><!--/.media .stream-->
											</div><!--/.stream-respond-->
                                            
                                            <div class="stream-respond">
												<div class="media stream">
													<a href="#" class="media-avatar small pull-left">
														<img src="images/user.png">
													</a>
													<div class="media-body">
														<div class="stream-headline">
															<h5 class="stream-author">
																John Donga 
																<small>10 July 14</small>
															</h5>
															<div class="stream-text">
																Lorem Ipsum is simply dummy text of the printing and typesetting industry.
															</div>
														</div><!--/.stream-headline-->
													</div>
												</div><!--/.media .stream-->
												<div class="media stream">
													<a href="#" class="media-avatar small pull-left">
														<img src="images/user.png">
													</a>
													<div class="media-body">
														<div class="stream-headline">
															<h5 class="stream-author">
																John Donga 
																<small>12 July 14</small>
															</h5>
															<div class="stream-text">
																Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.
															</div>
														</div><!--/.stream-headline-->
													</div>
												</div><!--/.media .stream-->
											</div><!--/.stream-respond-->
                                            <div class="stream-respond">
												<div class="media stream">
													<a href="#" class="media-avatar small pull-left">
														<img src="images/user.png">
													</a>
													<div class="media-body">
														<div class="stream-headline">
															<h5 class="stream-author">
																John Donga 
																<small>10 July 14</small>
															</h5>
															<div class="stream-text">
																Lorem Ipsum is simply dummy text of the printing and typesetting industry.
															</div>
														</div><!--/.stream-headline-->
													</div>
												</div><!--/.media .stream-->
												<div class="media stream">
													<a href="#" class="media-avatar small pull-left">
														<img src="images/user.png">
													</a>
													<div class="media-body">
														<div class="stream-headline">
															<h5 class="stream-author">
																John Donga 
																<small>12 July 14</small>
															</h5>
															<div class="stream-text">
																Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text.
															</div>
														</div><!--/.stream-headline-->
													</div>
												</div><!--/.media .stream-->
											</div><!--/.stream-respond-->
										</div>
									</div><!--/.media .stream-->
									<div class="media stream">
										<a href="#" class="media-avatar medium pull-left">
											<img src="images/user.png">
										</a>
										<div class="media-body">
											<div class="stream-headline">
												<h5 class="stream-author">
													John Donga 
													<small>08 July, 2014</small>
												</h5>
												<div class="stream-text">
													 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type. 
												</div>
											</div><!--/.stream-headline-->

											<div class="stream-options">
												<a href="#" class="btn btn-small">
													<i class="icon-thumbs-up shaded"></i>
													Like
												</a>
												<a href="#" class="btn btn-small">
													<i class="icon-reply shaded"></i>
													Reply
												</a>
												<a href="#" class="btn btn-small">
													<i class="icon-retweet shaded"></i>
													Repost
												</a>
											</div>
										</div>
									</div><!--/.media .stream-->
                                    
                                    <div class="media stream">
										<a href="#" class="media-avatar medium pull-left">
											<img src="images/user.png">
										</a>
										<div class="media-body">
											<div class="stream-headline">
												<h5 class="stream-author">
													John Donga 
													<small>08 July, 2014</small>
												</h5>
												<div class="stream-text">
													 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type. 
												
                                              
                                                
                                                
                                               

                                                
                                                </div>
												<div class="stream-attachment photo">
													<div class="responsive-photo">
														<img src="images/img.jpg" />
													</div>
												</div>
											</div><!--/.stream-headline-->

											<div class="stream-options">
												<a href="#" class="btn btn-small">
													<i class="icon-thumbs-up shaded"></i>
													Like
												</a>
												<a href="#" class="btn btn-small">
													<i class="icon-reply shaded"></i>
													Reply
												</a>
												<a href="#" class="btn btn-small">
													<i class="icon-retweet shaded"></i>
													Repost
												</a>
											</div>
										</div>
									</div><!--/.media .stream-->
									<div class="media stream">
										<a href="#" class="media-avatar medium pull-left">
											<img src="images/user.png">
										</a>
										<div class="media-body">
											<div class="stream-headline">
												<h5 class="stream-author">
													John Donga 
													<small>08 July, 2014</small>
												</h5>
												<div class="stream-text">
													 Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type. 
												</div>
												<div class="stream-attachment video">
													<div class="responsive-video">
														
                                                        
                                                        <iframe src="//player.vimeo.com/video/20630217" width="560" height="315" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> <p><a href="http://vimeo.com/20630217">Google Car</a> from <a href="http://vimeo.com/user3524956">Henk Rogers</a> on <a href="https://vimeo.com">Vimeo</a>.</p>
                                                        
                                                        
													</div>
												</div>
											</div><!--/.stream-headline-->

											<div class="stream-options">
												<a href="#" class="btn btn-small">
													<i class="icon-thumbs-up shaded"></i>
													Like
												</a>
												<a href="#" class="btn btn-small">
													<i class="icon-reply shaded"></i>
													Reply
												</a>
												<a href="#" class="btn btn-small">
													<i class="icon-retweet shaded"></i>
													Repost
												</a>
											</div>
										</div>
									</div><!--/.media .stream-->

									<div class="media stream load-more">
										<a href="#">
											<i class="icon-refresh shaded"></i>
											show more...
										</a>
									</div>
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