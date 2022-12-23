<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: yunio
  Date: 23/12/2022
  Time: 10:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Showing the users</title>
  <jsp:include page="style.jsp"></jsp:include>
</head>
<body>
<jsp:include page="navbar.jsp">
    <jsp:param name="mostrautenti" value="active"/>
</jsp:include>
<main class="container mt-3">
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <th>Nome</th>
            <th>Email</th>
            <th>Country</th>
            <th>Age</th>
            <th>Action</th>
        </tr>
        </thead>

        <tbody>
        <c:forEach var="user" items="${userList}">
            <tr>
                <th><c:out value="${user.getId()}"/></th>
                <td><c:out value="${user.getName()}"/></td>
                <td><c:out value="${user.getEmail()}"/></td>
                <td><c:out value="${user.getCountry()}"/></td>
                <td><c:out value="${user.getAge()}"/></td>
                <td>
                    <a class="badge bg-danger text-light mb-2 text-center" href="ServletDeleteUser?id=<c:out value="${user.getId()}"/>">DEL</a>
                    <a href="UpdateUser?id=<c:out value='${user.getId()}' />" class="badge text-light bg-success text-center">EDIT</a>
                </td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
</main>
</body>
</html>
