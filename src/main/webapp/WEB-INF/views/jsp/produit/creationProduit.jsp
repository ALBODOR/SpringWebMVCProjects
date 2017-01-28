<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!-- Include Header -->
	<jsp:include page="../../fragments/header.jsp"></jsp:include>	
    
    <div class="panel panel-default">
            <div class="panel-heading"> Saisie d'un Produit</div>
            <div class="panel-body">
                <form method="post" action="creationProduit">                
	                <div class="form-group">
	                    <label class="control-label">Nom Produit: </label>
	                    <input type="text" class="form-control" id="nomProduit" name="nomProduit" value="${produit.nomProduit}" size="20" maxlength="20" /><span class="text-danger">${form.erreurs['nomProduit']}</span>                     
	                </div>
	                
	                <div class="form-group">
	                    <label class="control-label">Quantite: </label>
	                    <input type="text" class="form-control" id="quantiteProduit" name="quantiteProduit" value="${produit.quantite}" size="20" maxlength="20" /><span class="text-danger">${form.erreurs['quantiteProduit']}</span>                     
	                </div>
	                
	                <div class="form-group">
	                    <label class="control-label">Prix: </label>
	                    <input type="text" class="form-control" id="prixProduit" name="prixProduit" value="${produit.prix}" size="20" maxlength="20" /><span class="text-danger">${form.erreurs['prixProduit']}</span>
	                </div>
	                
	                <div class="form-group">
	                    <label class="control-label">Commande: </label>
	                    <select class="form-control" id="CommandeProduit" name="CommandeProduit">
	                      <option selected disabled>Liste des commandes</option>
	                      <c:forEach items="${ commandes }" var="commande" varStatus="boucle">
	                        <option><c:out value="${ commande.id }"/></option>
	                      </c:forEach>
	                     </select>
	                    <span class="text-danger">${form.erreurs['CommandeProduit']}</span>
	                </div>
	                 
	                <div>               
	                    <button type="submit" class="btn btn-primary">Enregistrer</button>
	                    <button type="reset" class="btn btn-primary">Initialiser</button>
	                </div>
	                
                </form>
            </div>
        </div>      
    </div>  
    
	<!-- Include Footer -->
	<jsp:include page="../../fragments/footer.jsp"></jsp:include>
