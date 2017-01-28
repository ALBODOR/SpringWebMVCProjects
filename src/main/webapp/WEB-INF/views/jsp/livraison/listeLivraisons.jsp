<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Include Header -->
<jsp:include page="../../fragments/header.jsp"></jsp:include>	

    <div class="container spacer">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Code</th>
                    <th>Date Livraison</th>
                    <th>Commande</th>
                    <th>Suppression</th>
                    <th>Edition</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${ livraisons }" var="livraison" varStatus="boucle">
            <tr>
                <td><c:out value="${ livraison.id }"/></td>
                <td><c:out value="${ livraison.dateLivraison }"/></td>
                <td><c:out value="${ livraison.commande.id }"/></td>
                <td>
                    <a onclick="return confirm('Etes vous sur de vouloir supprimer?')" href="/suppression?id=${livraison.id}">
                        <img class="spacer_sup" src="/inc/supprimer.png" alt="Supprimer" />
                    </a>
                </td>
                <td>
                    <a href="edition?id=${livraison.id}">
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
