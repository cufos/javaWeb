package com.cufos.javaweb.controller;

import com.cufos.javaweb.dao.UserDAO;
import com.cufos.javaweb.model.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "ServletInsertUser", value = "/ServletInsertUser")
public class ServletInsertUser<Int> extends HttpServlet {
  private UserDAO userDAO;
  public void init() {
    userDAO = new UserDAO();
  }
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
    dispatcher.forward(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String name = request.getParameter("name");
    String email = request.getParameter("email");
    String country = request.getParameter("country");
    String age = request.getParameter("age");

    User newUser = new User(name,email,country);

    try {
      userDAO.insertUser(newUser);
    } catch (SQLException e) {
      throw new RuntimeException(e);
    } catch (ClassNotFoundException e) {
      throw new RuntimeException(e);
    }
    response.sendRedirect("userInserito.jsp");
  }
}