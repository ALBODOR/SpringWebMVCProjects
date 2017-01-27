    <div class="col-md-6 col-sm-6 col-xs-12 spacer col-md-offset-3">
        <div class="panel panel-default">
            <div class="panel-heading"> Saisie d'un Produit</div>
            <div class="panel-body">
                <form method="post" action="creationProduit">                
                <div class="form-group">
                    <label class="control-label">Nom Produit: </label>
                    <input type="text" class="form-control" id="nomProduit" name="nomProduit" value="<c:out value="${produit.nomProduit}"/>" size="20" maxlength="20" /><span class="text-danger">${form.erreurs['nomProduit']}</span>                     
                </div>
                <div class="form-group">
                    <label class="control-label">quantité: </label>
                    <input type="text" class="form-control" id="quantiteProduit" name="quantiteProduit" value="<c:out value="${produit.quantite}"/>" size="20" maxlength="20" /><span class="text-danger">${form.erreurs['quantiteProduit']}</span>                     
                </div>
                <div class="form-group">
                    <label class="control-label">prix: </label>
                    <input type="text" class="form-control" id="prixProduit" name="prixProduit" value="<c:out value="${produit.prix}"/>" size="20" maxlength="20" /><span class="text-danger">${form.erreurs['prixProduit']}</span>
                <div>
                <div class="form-group">
                    <label class="control-label">Commande: </label>
                    <select class="form-control" id="CommandeProduit" name="CommandeProduit">
                      <option selected disabled>Liste des commandes</option>
                      <c:forEach items="${ sessionScope.commandes }" var="mapCds" varStatus="boucle">
                        <option><c:out value="${ mapCds.value.numeroCommande }"/></option>
                      </c:forEach>
                     </select>
                    </select><span class="text-danger">${form.erreurs['CommandeProduit']}</span>
                </div>                
                    <button type="submit" class="btn btn-primary">Save</button>
                    <button type="reset" class="btn btn-primary"> Remettre à zéro </button>
                </div>
                </form>
            </div>
        </div>      
    </div>  