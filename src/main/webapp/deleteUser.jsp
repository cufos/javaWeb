<%--
  Created by IntelliJ IDEA.
  User: yunio
  Date: 23/12/2022
  Time: 12:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting User</title>
  <jsp:include page="style.jsp"></jsp:include>
</head>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<form class="container w-50" method="post" action="ServletDeleteUser">
  <div class="form-group">
    <label  class="form-label mt-2">User ID</label>
    <input type="number"  value='${id}' placeholder="User id" class="form-control" name="id" required="required">
  </div>
  <button type="submit" class="btn btn-danger">Delete</button>
</form>
</body>
</html>
