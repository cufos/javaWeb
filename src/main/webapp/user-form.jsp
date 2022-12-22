<%--
  Created by IntelliJ IDEA.
  User: yunio
  Date: 22/12/2022
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
  <form class="w-50" method="post" action="ServletInsertUser">
    <div class="mb-3">
      <div class="mb-3">
        <label for="name" class="form-label">Name</label>
        <input type="text" class="form-control" id="name" name="name">
      </div>
      <div class="mb-3">
        <label for="name" class="form-label">Country</label>
        <input type="text" class="form-control" id="country" name="country">
      </div>
      <div class="mb-3">
        <label for="eta" class="form-label">Age</label>
        <input type="number" class="form-control" id="eta" name="eta">
      </div>
      <label for="email" class="form-label">Email address</label>
      <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp">
      <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
    </div>
    <div class="mb-3">
      <label for="password" class="form-label">Password</label>
      <input type="password" class="form-control" id="password" name="password">
    </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>

<form method="post" action="ServletInsertUser">
  <div class="mb-3 w-50">
    <label for="cancel" class="form-label">Age</label>
    <input type="number" class="form-control" id="cancel" name="cancel">
  </div>
  <button type="submit" class="btn btn-danger">Delete user</button>
</form>

</body>
</html>
