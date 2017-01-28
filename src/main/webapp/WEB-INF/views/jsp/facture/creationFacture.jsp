<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!-- Include Header -->
	<jsp:include page="../../fragments/header.jsp"></jsp:include>	
    
            <div class="panel panel-default">
            <div class="panel-heading"> Saisie d'une facture</div>
            <div class="panel-body">
                <form method="post" action="creationFacture">                
                <div class="form-group">
                    <label class="control-label">Date de Facturation: </label>
                    <input type="date" id="dateFacture" name="dateFacture" value="${facture.datefacture}" class="form-control"/>
                    <span class="text-danger">${form.erreurs['dateFacture']}</span>  
                </div>
                <div class="form-group">
                    <label class="control-label">Montant: </label>
                    <input type="text" class="form-control" id="montantFacture" name="montantFacture" value="${facture.montant}" size="20" maxlength="20" /><span class="text-danger">${form.erreurs['montantFacture']}</span>                     
                </div>  
                <div class="form-group">
                    <label class="control-label">Commande: </label>
                    <select class="form-control" id="CommandeFacture" name="CommandeFacture">
                      <option selected disabled>Liste des commandes</option>
                      <c:forEach items="${ commandes }" var="commande" varStatus="boucle">
                        <option><c:out value="${ commande.id }"/></option>
                      </c:forEach>
                     </select>
                    <span class="text-danger">${form.erreurs['CommandeFacture']}</span>
                </div>
                <div>
                    <button type="submit" class="btn btn-primary">Enregistrer</button>
                    <button type="reset" class="btn btn-primary"> Initialiser </button>
                </div>
                </form>
            </div>
        </div>  
                     
	<!-- Include Footer -->
	<jsp:include page="../../fragments/footer.jsp"></jsp:include>
