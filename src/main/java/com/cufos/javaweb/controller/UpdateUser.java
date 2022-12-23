package com.cufos.javaweb.controller;

import com.cufos.javaweb.dao.UserDAO;
import com.cufos.javaweb.model.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "UpdateUser", value = "/UpdateUser")
public class UpdateUser extends HttpServlet {
  private UserDAO userDAO;
  public void init() {
    userDAO = new UserDAO();
  }
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    int id = Integer.parseInt(request.getParameter("id"));
    String page = "userUpdate.jsp";
    User existingUser = null;
    existingUser = userDAO.selectUser(id);

    RequestDispatcher dispatcher = request.getRequestDispatcher(page);
    if (!existingUser.equals(null))
      request.setAttribute("user", existingUser);
    dispatcher.forward(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    Integer id = Integer.parseInt(request.getParameter("id"));
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String country = request.getParameter("country");
    Integer age = Integer.parseInt(request.getParameter("age"));
    User newUser = new User(id,name, email, country,age);
    String page = "userUpdated.jsp";

    try {
      userDAO.updateUser(newUser);
    } catch (SQLException e) {
      e.printStackTrace(System.err);
      page = "error.jsp";
    }
    response.sendRedirect(page);
  }
}

