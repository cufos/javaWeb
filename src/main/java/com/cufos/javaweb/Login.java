package com.cufos.javaweb;

import java.io.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "Login", value = "/welcome")
public class Login extends HttpServlet {
  @Override
  public void init() throws ServletException{
    super.init();
  }


  public void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException,IOException{
    String pageName = "welcome.jsp";
    String benvenuto;

    final String passwordU = "admin";
    final String emailU = "admin@admin.com";

    String email = request.getParameter("email");
    String password = request.getParameter("password");

    if (email.equals(emailU) && password.equals(passwordU)){
      benvenuto = "Loggato";
    }


    RequestDispatcher page = request.getRequestDispatcher(pageName);
    page.forward(request,response);
  }
}
