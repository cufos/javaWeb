<%--
  Created by IntelliJ IDEA.
  User: yunio
  Date: 23/12/2022
  Time: 14:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<html>
<title>Updating an User</title>
<jsp:include page="style.jsp"></jsp:include>
<body>
<jsp:include page="navbar.jsp"></jsp:include>
<br>
<div class="card container w-50">
  <h5 class="card-header">Update</h5>
  <div class="card-body">
    <form method="post" action="UpdateUser">
      <input name="id" value="${user.id}" hidden="">
      <div class="form-group">
        <label  class="form-label">Nome</label>
        <input type="text" value="${user.name}" class="form-control" name="name" required="required">
      </div>
      <div class="form-group">
        <label class="form-label">Email</label>
        <input type="text" placeholder="carlo@mail.it" value="${user.email}" class="form-control" name="email" required="required">
      </div>
      <div class="form-group">
        <label  class="form-label">Stato</label>
        <input type="text" class="form-control" value="${user.country}" placeholder="Italia" name="country" required="required">
      </div>
      <div class="form-group">
        <label  class="form-label">Età</label>
        <input type="number" class="form-control" value="${user.age}" placeholder="1" name="age" required="required">
      </div>
      <button type="submit" class="btn btn-success">Update</button>
    </form>
  </div>
</div>

</body>
</html>