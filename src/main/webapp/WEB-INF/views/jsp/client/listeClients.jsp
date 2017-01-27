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
					    <th>Code</th> <th>Nom</th> <th>Prénom</th> <th>Adresse</th> <th>Téléphone</th> <th>Suppression</th> <th>Edition</th>
					</tr>
				</head>
				<body>
					<c:forEach items="${ requestScope.clients }" var="clients" varStatus="boucle">
		<%-- 			<c:param name="${id}" value="${mapProfs.value.id }"/>  --%>

					<tr>
						<%-- Affichage des propriÃ©tÃ©s du bean Client,
						qui est stockÃ© en tant que valeur de l'entrÃ©e courante de la map --%>
						<td><c:out value="${ clients.value.numeroClient }"/></td>
						<td><c:out value="${ clients.value.nom }"/></td>
						<td><c:out value="${ clients.value.prenom }"/></td>
						<td><c:out value="${ clients.value.adresse }"/></td>
						<td><c:out value="${ clients.value.tel }"/></td>
						<%-- Lien vers la servlet de suppression, avec
						passage du nom du client - c'est-Ã -dire la clÃ© de la Map - en
						paramÃ¨tre grÃ¢ce Ã  la balise <c:param/>. --%>
						<td>
							<a onclick="return confirm('êtes vous sûr de vouloir supprimer?')" href="<c:url value="/suppressionClient"><c:param name="code" value="${clients.value.numeroClient}" /></c:url>">
							<img class="spacer_sup" src="<c:url value="/inc/supprimer.png"/>" alt="Supprimer" />
							</a>
						</td>
						<td>
							<a href="<c:url value="/editionClient"><c:param name="code" value="${clients.value.numeroClient }" /></c:url>"><img class="spacer_ed" src="<c:url value="/inc/editer.png"/>" alt="Editer"/></a>
						</td>
					</tr>
					</c:forEach>
				</body>
			</table>
		</div>
	</body>
</html>