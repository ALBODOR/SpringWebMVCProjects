<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!-- Include Header -->
	<jsp:include page="../fragments/header.jsp"></jsp:include>
	
	<!-- Page Content -->
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
			
	<!-- Include Footer -->
	<jsp:include page="../fragments/footer.jsp"></jsp:include>
	