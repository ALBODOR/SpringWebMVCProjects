<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<html>
	<head>
	<meta charset="utf-8"/>
		<title>Liste des Clients</title>
		<link type="text/css" rel="stylesheet" href="inc/css/style.css"/>
		<link type="text/css" rel="stylesheet" href="inc/css/bootstrap.min.css"/>
	</head>
	<body>	
		<c:import url="/inc/menu.jsp" />	
		<div class="container spacer">
			<table class="table table-striped">
				<head>
					<tr>
					    <th>Code</th> <th>Date Facture</th> <th>Montant</th><th>Commande</th><th>Suppression</th> <th>Edition</th>
					</tr>
				</head>
				<body>
					<c:forEach items="${ requestScope.factures }" var="factures" varStatus="boucle">
		<%-- 			<c:param name="${id}" value="${mapProfs.value.id }"/>  --%>

					<tr>
						<%-- Affichage des propriÃ©tÃ©s du bean Client,
						qui est stockÃ© en tant que valeur de l'entrÃ©e courante de la map --%>
						<td><c:out value="${ factures.value.numeroFacture }"/></td>
						<td><c:out value="${ factures.value.datefacture }"/></td>
						<td><c:out value="${ factures.value.montant }"/></td>
						<td><c:out value="${ factures.value.commande.numeroCommande }"/></td>
						<%-- Lien vers la servlet de suppression, avec
						passage du nom du client - c'est-Ã -dire la clÃ© de la Map - en
						paramÃ¨tre grÃ¢ce Ã  la balise <c:param/>. --%>
						<td>
							<a onclick="return confirm('êtes vous sûr de vouloir supprimer?')" href="<c:url value="/suppressionFacture"><c:param name="code" value="${factures.value.numeroFacture}" /></c:url>">
							<img class="spacer_sup" src="<c:url value="/inc/supprimer.png"/>" alt="Supprimer" />
							</a>
						</td>
						<td>
							<a href="<c:url value="/editionFacture"><c:param name="code" value="${factures.value.numeroFacture }" /></c:url>"><img class="spacer_ed" src="<c:url value="/inc/editer.png"/>" alt="Editer"/></a>
						</td>
					</tr>
					</c:forEach>
				</body>
			</table>
		</div>
	</body>
</html>