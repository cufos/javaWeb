<%--
  Created by IntelliJ IDEA.
  User: yunio
  Date: 22/12/2022
  Time: 11:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="mb-3">
  <form method="post" action="say-my-name">

    <label for="name" class="form-label">Name</label>
    <input name="name" type="text" class="form-control w-50" name="name" id="name" placeholder="Insert your name">
    <div class="col-auto mt-2">
      <button type="submit" class="btn btn-primary mb-3">Confirm identity</button>
    </div>
  </form>
</div>
