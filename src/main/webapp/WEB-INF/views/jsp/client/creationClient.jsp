    <div class="col-md-6 col-sm-6 col-xs-12 spacer col-md-offset-3">
        <div class="panel panel-default">
            <div class="panel-heading">
            	Saisie d'un Client
           	</div>
            <div class="panel-body">
                <form method="post" action="/client/creer">                
	                <div class="form-group">
	                    <label class="control-label">Nom : </label>
	                    <input type="text" class="form-control" id="nomClient" name="nomClient" value="<c:out value="${client.nom}"/>" size="20" maxlength="20" /><span class="text-danger">${form.erreurs['nomClient']}</span>                     
	                </div>
	                <div class="form-group">
	                    <label class="control-label">Prenom : </label>
	                    <input type="text" class="form-control" id="prenomClient" name="prenomClient" value="<c:out value="${client.prenom}"/>" size="20" maxlength="20" /><span class="text-danger">${form.erreurs['prenomClient']}</span>                     
	                </div>
	                <div class="form-group">
	                    <label class="control-label">Adresse : </label>
	                    <input type="text" class="form-control" id="adresseClient" name="adresseClient" value="<c:out value="${client.adresse}"/>" size="20" maxlength="20" /><span class="text-danger">${form.erreurs['adresseClient']}</span>                     
	                </div>  
	                <div class="form-group">
	                    <label class="control-label">Telephone : </label>
	                    <input type="text" class="form-control" id="telephoneClient" name="telephoneClient" value="<c:out value="${client.telephone}"/>" size="20" maxlength="20" /><span class="text-danger">${form.erreurs['telephoneClient']}</span><br />
	                </div>
	                <div>
	                    <button type="submit" class="btn btn-primary">Enregistrer</button>
	                    <button type="reset" class="btn btn-primary">Initialiser</button>
	                </div>
                </form>
            </div>
        </div>      
    </div>  