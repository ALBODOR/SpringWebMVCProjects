<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
	<!-- Include Header -->
	<jsp:include page="../fragments/header.jsp"></jsp:include>
	
	<!-- Page Content -->
	<html lang="fr">
		<head>
			<meta charset="UTF-8">
			<title>Projet Spring JSP</title> 
			<spring:url value="/resources/css/login.css" var="loginCSS" /> 
			<link rel="stylesheet" type="text/css" href="${loginCSS}" /> 
		</head>
		
		<body>
			<hgroup>
				<h1>Authentification</h1>
			</hgroup>
			
			<form method="POST" action="login" >
				<div class="group">
					<input type="text" name="login" /><span class="highlight"></span><span class="bar"></span>
					<label>Login</label>
				</div>
				
				<div class="group">
					<input type="password" name="motDePasse" /><span class="highlight"></span><span class="bar"></span>
					<label>Mot de passe</label>
				</div>
				
				<button type="button" class="button buttonBlue">Se connecter
					<div class="ripples buttonRipples"><span class="ripplesCircle"></span></div>
				</button>
			</form>
			
			<spring:url value="/resources/js/jquery-3.1.1.min.js" var="jqueryJS" /> 
			<spring:url value="/resources/js/login.js" var="loginJS" /> 
			<script src="${loginJS}" type="text/javascript"></script>
			<script src="${jqueryJS}" type="text/javascript"></script>
		</body>
		</html>
			
	
	<!-- Include Footer -->
	<jsp:include page="../fragments/footer.jsp"></jsp:include>
	