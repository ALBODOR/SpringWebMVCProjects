    <div class="col-md-6 col-sm-6 col-xs-12 spacer col-md-offset-3">
        <div class="panel panel-default">
            <div class="panel-heading"> Saisie d'une Livraison</div>
            <div class="panel-body">
                <form method="post" action="creationLivraison">                
                <div class="form-group">
                    <label class="control-label">Date de Livraison: </label>
                    <input type="date" id="dateLivraison" name="dateLivraison" value="<c:out value="${livraison.dateLivraison}"/>" class="form-control"/>
                    <span class="text-danger">${form.erreurs['dateLivraison']}</span>  
                </div>
                <div class="form-group">
                    <label class="control-label">Commande: </label>
                    <select class="form-control" id="commandeLivraison" name="commandeLivraison">
                      <option selected disabled>Liste des commandes</option>
                      <c:forEach items="${ sessionScope.commandes }" var="mapCds" varStatus="boucle">
                        <option><c:out value="${ mapCds.value.numeroCommande }"/></option>
                      </c:forEach>
                     </select>
                    </select><span class="text-danger">${form.erreurs['commandeLivraison']}</span>
                </div>
                <div>
                    <button type="submit" class="btn btn-primary">Save</button>
                    <button type="reset" class="btn btn-primary"> Remettre à zéro </button>
                </div>
                </form>
            </div>
        </div>      
    </div>  