<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Bootstrap 🌈</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<header class="bg-light py-2">
    <div class="container m-auto justify-content-between d-flex ">
        <h1>JSP - Bootstrap</h1>
        <jsp:include page="navbar.jsp"></jsp:include>
    </div>
</header>
<main class="container">
    <br/>
    <a class="d-block mx-4" href="hello-servlet">Hello Servlet</a>
    <a class="d-block mx-4" href="say-my-name">Say my name</a>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>