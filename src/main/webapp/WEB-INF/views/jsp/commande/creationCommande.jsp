    <div class="col-md-6 col-sm-6 col-xs-12 spacer col-md-offset-3">
        <div class="panel panel-default">
            <div class="panel-heading"> Saisie d'une Commande</div>
            <div class="panel-body">
                <form method="post" action="creationCommande">                
                <div class="form-group">
                    <label class="control-label">Date Commande: </label>
                    <input type="date" id="dateCommande" name="dateCommande" value="<c:out value="${commande.dateCommande}"/>" class="form-control"/>
                    <span class="text-danger">${form.erreurs['dateCommande']}</span>  
                </div>
                <div class="form-group">
                    <label class="control-label">Client: </label>
                    <select class="form-control" id="clientCommande" name="clientCommande">
                      <option selected disabled>Liste des clients</option>
                      <c:forEach items="${ sessionScope.clients }" var="mapCls" varStatus="boucle">
                        <option><c:out value="${ mapCls.value.nom }"/></option>
                      </c:forEach>
                     </select>
                    </select><span class="text-danger">${form.erreurs['clientCommande']}</span>
                </div>
                <div>
                    <button type="submit" class="btn btn-primary">Save</button>
                    <button type="reset" class="btn btn-primary"> Remettre à zéro </button>
                </div>
                </form>
            </div>
        </div>      
    </div>  