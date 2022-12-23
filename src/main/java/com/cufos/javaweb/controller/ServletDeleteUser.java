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
    Integer id = Integer.parseInt(request.getParameter("id"));
    request.setAttribute("id",id);
    RequestDispatcher dispatcher = request.getRequestDispatcher("deleteUser.jsp");
    dispatcher.forward(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String page = "userCancellato.jsp";
    Integer id = Integer.parseInt(request.getParameter("id"));


    try {
      userDAO.deleteUser(id);
    } catch (SQLException e) {
      e.printStackTrace(System.err);
      page = "error.jsp";
    }


    response.sendRedirect(page);
  }
}
