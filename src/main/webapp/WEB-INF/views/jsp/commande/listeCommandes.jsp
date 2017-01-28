<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Include Header -->
<jsp:include page="../../fragments/header.jsp"></jsp:include>	

    <div class="container spacer">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Code</th>
                    <th>Date Commande</th>
                    <th>Client</th>
                    <th>Suppression</th>
                    <th>Edition</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${ commandes }" var="commande" varStatus="boucle">
            <tr>	
                <td><c:out value="${ commande.id }"/></td>
                <td><c:out value="${ commande.dateCommande }"/></td>
                <td><c:out value="${ commande.client.nom }"/></td>
                <td>
                    <a onclick="return confirm('Etes-vous sur de vouloir supprimer?')" href="suppression?id=${commande.id}">
                        <img class="spacer_sup" src="/inc/supprimer.png" alt="Supprimer" />
                    </a>
                </td>
                <td>
                    <a href="/edition?id=${commande.id }">
                        <img class="spacer_ed" src="/inc/editer.png" alt="Editer"/>
                    </a>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>

<!-- Include Footer -->
<jsp:include page="../../fragments/footer.jsp"></jsp:include>
