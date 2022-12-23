<%--
  Created by IntelliJ IDEA.
  User: yunio
  Date: 22/12/2022
  Time: 09:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
  <nav class="navbar navbar-expand-md navbar-dark" style="background-color: #50788b">

    <ul class="navbar-nav d-flex flex-row" style="column-gap: 1rem">
      <li><a href="<%=request.getContextPath()%>/" class="nav-link">Home</a></li>
      <li><a class="nav-link" href="<%=request.getContextPath()%>/hello-servlet">Hello Servlet</a></li>
      <li><a href="<%=request.getContextPath()%>/ServletInsertUser" class="nav-link ${param.inserimento}">Inserisci Utente</a></li>

      <li><a href="<%=request.getContextPath()%>/mostraUtenti" class="nav-link ${param.inserimento}">Mostra Utenti</a></li>
    </ul>
  </nav>
</header>
