<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Include Header -->
<jsp:include page="../../fragments/header.jsp"></jsp:include>	

    <div class="container spacer">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Code</th>
                    <th>Date Facture</th>
                    <th>Montant</th>
                    <th>Commande</th>
                    <th>Suppression</th>
                    <th>Edition</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${ factures }" var="factures" varStatus="boucle">
            <tr>
                <td><c:out value="${ factures.id }"/></td>
                <td><c:out value="${ factures.datefacture }"/></td>
                <td><c:out value="${ factures.montant }"/></td>
                <td><c:out value="${ factures.commande.numeroCommande }"/></td>
                <td>
                    <a onclick="return confirm('Etes vous sur de vouloir supprimer?')" href="/suppression?id=${factures.id}">
                        <img class="spacer_sup" src="<c:url value='/inc/supprimer.png'/>" alt="Supprimer" />
                    </a>
                </td>
                <td>
                    <a href="edition?id=${factures.id }">
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
