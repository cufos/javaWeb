package com.cufos.javaweb.controller;
import com.cufos.javaweb.dao.UserDAO;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;


@WebServlet(name = "ServletDeleteUser", value = "/ServletDeleteUser")
public class ServletDeleteUser extends HttpServlet {
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

    Integer id = Integer.parseInt(request.getParameter("cancel"));


    try {
      userDAO.deleteUser(id);
    } catch (SQLException e) {
      throw new RuntimeException(e);
    }


    request.setAttribute("msg_delete", "L'utente è stato eliminato dal DB!");
    RequestDispatcher dispatcher = request.getRequestDispatcher("user-form.jsp");
    dispatcher.forward(request,response);
  }
}
