<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Include Header -->
<jsp:include page="../../fragments/header.jsp"></jsp:include>

    <div class="container spacer">
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Adresse</th>
                    <th>Téléphone</th>
                    <th>Suppression</th>
                    <th>Edition</th>
                </tr>
            </thead>
            <tbody>
            <c:forEach items="${clients}" var="client">
            <tr>
                <td><c:out value="${client.id}" /></td>
                <td><c:out value="${client.nom}" /></td>
                <td><c:out value="${client.prenom}" /></td>
                <td><c:out value="${client.adresse}" /></td>
                <td><c:out value="${client.telephone}" /></td>
                <td>
                    <a onclick="return confirm('êtes vous sûr de vouloir supprimer?')" href="/suppression?id=${client.id}">
                        <img class="spacer_sup" src="/inc/supprimer.png" alt="Supprimer" />
                    </a>
                </td>
                <td>
                    <a href="/edition?id=${client.id}">
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
