package com.cufos.javaweb;

import java.io.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "Form", value = "/form")
public class Form extends HttpServlet {
  @Override
  public void init() throws ServletException{
    super.init();
  }

  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
    String jspPage = "name.jsp";

    String name = request.getParameter("name");

    request.setAttribute("name",name);

    RequestDispatcher page = request.getRequestDispatcher(jspPage);

    page.forward(request,response);
  }

  public void doPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException,IOException{
    String pageName = "name.jsp";

    String name = request.getParameter("name");

    request.setAttribute("name",name);

    RequestDispatcher page = request.getRequestDispatcher(pageName);
    page.forward(request,response);
  }
}
