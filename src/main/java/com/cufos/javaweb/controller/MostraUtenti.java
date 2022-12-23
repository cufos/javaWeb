package com.cufos.javaweb.controller;

import com.cufos.javaweb.dao.UserDAO;
import com.cufos.javaweb.model.User;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "MostraUtenti", value = "/mostraUtenti")
public class MostraUtenti extends HttpServlet {
  private UserDAO userDAO;

  public void init() {
    userDAO = new UserDAO();
  }

  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    List<User> userList = userDAO.selectAllUsers();
    request.setAttribute("userList",userList);
    RequestDispatcher dispatcher = request.getRequestDispatcher("mostraUtenti.jsp");
    dispatcher.forward(request, response);
  }

  @Override
  protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    super.doPost(req, resp);
  }
}