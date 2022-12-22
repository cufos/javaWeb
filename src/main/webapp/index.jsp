<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - My First Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<header class="d-flex bg-light container-fluid m-auto justify-content-between">
<h1><%= "Hello World!" %></h1>
<jsp:include page="navbar.jsp"></jsp:include>
</header>
<br/>
<a class="d-block mx-4" href="hello-servlet">Hello Servlet</a>
<a class="d-block mx-4" href="say-my-name">Say my name</a>
</body>
</html>