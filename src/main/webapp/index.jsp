<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Bootstrap 🌈</title>
    <jsp:include page="style.jsp"></jsp:include>

</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<main class="container">
    <h1>Welcome</h1>
    <jsp:include page="form.jsp"></jsp:include>
    <jsp:include page="login.jsp"></jsp:include>
</main>

</body>
</html>