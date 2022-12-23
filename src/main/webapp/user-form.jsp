<%--
  Created by IntelliJ IDEA.
  User: yunio
  Date: 22/12/2022
  Time: 15:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<html>
<title>Creating an User</title>
<jsp:include page="style.jsp"></jsp:include>
<body>
<jsp:include page="navbar.jsp">
  <jsp:param name="aggiungeutenti" value="active"/>
</jsp:include>
<br>
<div class="card">
  <h5 class="card-header">Featured</h5>
  <div class="card-body">
    <form method="post" action="ServletInsertUser">
      <div class="form-group">
        <label  class="form-label">Nome</label>
        <input type="text" placeholder="Your name" class="form-control" name="name" required="required">
      </div>
      <div class="form-group">
        <label class="form-label">Email</label>
        <input type="text" placeholder="mai@mail.it" class="form-control" name="email" required="required">
      </div>
      <div class="form-group">
        <label  class="form-label">Stato</label>
        <input type="text" class="form-control" name="country" required="required">
      </div>
      <div class="form-group">
        <label  class="form-label">Age</label>
        <input type="number" class="form-control" name="eta" required="required">
      </div>
      <button type="submit" class="btn btn-success">Salva</button>
    </form>
  </div>
</div>

</body>
</html>