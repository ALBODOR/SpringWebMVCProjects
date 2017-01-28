<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!-- Include Header -->
	<jsp:include page="../../fragments/header.jsp"></jsp:include>	
    
        <div class="panel panel-default">
            <div class="panel-heading">
            	Saisie d'un Client
            </div>
            <div class="panel-body">
                <form method="POST" action="creation">                
	                <div class="form-group">
	                    <label class="control-label">Nom : </label>
	                    <input type="text" class="form-control" id="nomClient" name="nomClient" value="${client.nom}" size="20" maxlength="20" />                     
	                </div>
	                <div class="form-group">
	                    <label class="control-label">Prenom : </label>
	                    <input type="text" class="form-control" id="prenomClient" name="prenomClient" value="${client.prenom}" size="20" maxlength="20" />                     
	                </div>
	                <div class="form-group">
	                    <label class="control-label">Adresse : </label>
	                    <input type="text" class="form-control" id="adresseClient" name="adresseClient" value="${client.adresse}" size="20" maxlength="20" />                     
	                </div>  
	                <div class="form-group">
	                    <label class="control-label">Telephone : </label>
	                    <input type="text" class="form-control" id="telephoneClient" name="telephoneClient" value="${client.telephone}" size="20" maxlength="20" />
	                </div>
	                <div>
                            <center>
                                <button type="submit" class="btn btn-primary">Enregistrer</button>
                                &nbsp;&nbsp;
                                <button type="reset" class="btn btn-primary">Initialiser</button>
                            </center>
	                </div>
                </form>
            </div>
        </div>                          

	<!-- Include Footer -->
	<jsp:include page="../../fragments/footer.jsp"></jsp:include>
