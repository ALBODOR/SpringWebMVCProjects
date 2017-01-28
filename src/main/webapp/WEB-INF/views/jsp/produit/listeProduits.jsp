<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Include Header -->
<jsp:include page="../../fragments/header.jsp"></jsp:include>	

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
            <c:forEach items="${ produits }" var="produit" varStatus="boucle">
            <tr>
                <td><c:out value="${ produit.id }"/></td>
                <td><c:out value="${ produit.nomProduit }"/></td>
                <td><c:out value="${ produit.quantite }"/></td>
                <td><c:out value="${ produit.prix }"/></td>
                <td><c:out value="${ produit.commande.id }"/></td>
                <td>
                    <a onclick="return confirm('Etes-vous sur de vouloir supprimer?')" href="suppression?id=${produit.id}">
                        <img class="spacer_sup" src="img/supprimer.png" alt="Supprimer" />
                    </a>
                </td>
                <td>
                    <a href="edition?id=${produit.id}">
                        <img class="spacer_ed" src="img/editer.png" alt="Editer"/>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!-- Include Footer -->
<jsp:include page="../../fragments/footer.jsp"></jsp:include>
