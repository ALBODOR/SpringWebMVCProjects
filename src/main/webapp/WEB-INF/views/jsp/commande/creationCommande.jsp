<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!-- Include Header -->
	<jsp:include page="../../fragments/header.jsp"></jsp:include>	
    
            <div class="panel panel-default">
        
            <div class="panel-heading"> Une nouvelle Commande </div>
            
            <div class="panel-body">
                <form method="post" action="creationCommande">
	                                
	                <div class="form-group">
	                    <label class="control-label">Date Commande: </label>
	                    <input type="date" id="dateCommande" name="dateCommande" value="${commande.dateCommande}" class="form-control"/>
	                    <span class="text-danger">${form.erreurs['dateCommande']}</span>  
	                </div>
	                
	                <div class="form-group">
	                    <label class="control-label">Client: </label>
	                    <select class="form-control" id="clientCommande" name="clientCommande">
	                      <option selected disabled>Liste des clients</option>
	                      <c:forEach items="${ clients }" var="client" varStatus="boucle">
	                        <option><c:out value="${ client.nom }"/></option>
	                      </c:forEach>
	                     </select>
	                     <span class="text-danger">${form.erreurs['clientCommande']}</span>
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
