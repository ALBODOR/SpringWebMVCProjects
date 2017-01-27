    <div class="col-md-6 col-sm-6 col-xs-12 spacer col-md-offset-3">
        <div class="panel panel-default">
            <div class="panel-heading"> Saisie d'une facture</div>
            <div class="panel-body">
                <form method="post" action="creationFacture">                
                <div class="form-group">
                    <label class="control-label">Date de Facturation: </label>
                    <input type="date" id="dateFacture" name="dateFacture" value="<c:out value="${facture.datefacture}"/>" class="form-control"/>
                    <span class="text-danger">${form.erreurs['dateFacture']}</span>  
                </div>
                <div class="form-group">
                    <label class="control-label">Montant: </label>
                    <input type="text" class="form-control" id="montantFacture" name="montantFacture" value="<c:out value="${facture.montant}"/>" size="20" maxlength="20" /><span class="text-danger">${form.erreurs['montantFacture']}</span>                     
                </div>  
                <div class="form-group">
                    <label class="control-label">Commande: </label>
                    <select class="form-control" id="CommandeFacture" name="CommandeFacture">
                      <option selected disabled>Liste des commandes</option>
                      <c:forEach items="${ sessionScope.commandes }" var="mapCds" varStatus="boucle">
                        <option><c:out value="${ mapCds.value.numeroCommande}"/></option>
                      </c:forEach>
                     </select>
                    </select><span class="text-danger">${form.erreurs['CommandeFacture']}</span>
                </div>
                <div>
                    <button type="submit" class="btn btn-primary">Save</button>
                    <button type="reset" class="btn btn-primary"> Remettre à zéro </button>
                </div>
                </form>
            </div>
        </div>      
    </div>  