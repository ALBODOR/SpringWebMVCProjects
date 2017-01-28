<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!-- Include Header -->
	<jsp:include page="../../fragments/header.jsp"></jsp:include>	
    
        <div class="panel panel-default">
            <div class="panel-heading"> Saisie d'une Livraison</div>
            <div class="panel-body">
                <form method="post" action="creationLivraison">                
                <div class="form-group">
                    <label class="control-label">Date de Livraison: </label>
                    <input type="date" id="dateLivraison" name="dateLivraison" value="${livraison.dateLivraison}" class="form-control"/>
                    <span class="text-danger">${form.erreurs['dateLivraison']}</span>  
                </div>
                <div class="form-group">
                    <label class="control-label">Commande: </label>
                    <select class="form-control" id="commandeLivraison" name="commandeLivraison">
                      <option selected disabled>Liste des commandes</option>
                      <c:forEach items="${ commandes }" var="commande" varStatus="boucle">
                        <option><c:out value="${ commande.id }"/></option>
                      </c:forEach>
                     </select>
                     <span class="text-danger">${form.erreurs['commandeLivraison']}</span>
                </div>
                <div>
                    <button type="submit" class="btn btn-primary">Enregistrer</button>
                    <button type="reset" class="btn btn-primary">Initialiser</button>
                </div>
                </form>
            </div>
        </div> 
                
	<!-- Include Footer -->
	<jsp:include page="../../fragments/footer.jsp"></jsp:include>
