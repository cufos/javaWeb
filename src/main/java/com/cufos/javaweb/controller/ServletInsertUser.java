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
    Integer eta = Integer.parseInt(request.getParameter("eta"));

    String page = "userInserito.jsp";

    User newUser = new User(name, email, country, eta);
    try {
      userDAO.insertUser(newUser);
    } catch (SQLException e) {
      e.printStackTrace(System.err);
      page = "error.jsp";
    } catch (ClassNotFoundException e) {
      e.printStackTrace(System.err);
      page = "error.jsp";
    }


    response.sendRedirect(page);
  }
}
