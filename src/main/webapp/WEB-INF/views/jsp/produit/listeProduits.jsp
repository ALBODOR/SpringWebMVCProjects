<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<title>Liste des Clients</title>
		<meta charset="utf-8" />
		<link type="text/css" rel="stylesheet" href="inc/css/style.css"/>
		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>
	</head>
	<body>	
		<c:import url="/inc/menu.jsp" />	
		<div class="container spacer">
			<table class="table table-striped">
				<thead>
					<tr>
					    <th>Code</th>
					    <th>Nom</th>
					    <th>Quantite</th>
					    <th>Prix</th>
					    <th>Commande</th>
					    <th>Suppression</th>
					    <th>Edition</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${ requestScope.produits }" var="produits" varStatus="boucle">
					<tr>
						<td><c:out value="${ produits.value.numeroProduit }"/></td>
						<td><c:out value="${ produits.value.nomProduit }"/></td>
						<td><c:out value="${ produits.value.quantite }"/></td>
						<td><c:out value="${ produits.value.prix }"/></td>
						<td><c:out value="${ produits.value.commande.numeroCommande }"/></td>
						<td>
							<a onclick="return confirm('Etes-vous sur de vouloir supprimer?')" href="<c:url value="/produit/supprimer"><c:param name="id" value="${produits.value.numeroProduit}" /></c:url>">
							<img class="spacer_sup" src="<c:url value="img/supprimer.png"/>" alt="Supprimer" />
							</a>
						</td>
						<td>
							<a href="<c:url value="/produit/editer"><c:param name="id" value="${produits.value.numeroProduit }" /></c:url>"><img class="spacer_ed" src="<c:url value="img/editer.png"/>" alt="Editer"/></a>
						</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</body>
</html>