package com.cufos.javaweb;

import java.io.*;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "Name", value = "/say-my-name")
public class Name extends HttpServlet {
    @Override
    public void init() throws ServletException{
        super.init();
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException,IOException{
        String jspPage = "name.jsp";

        String name = "Francis Jr";

        request.setAttribute("name",name);

        RequestDispatcher view = request.getRequestDispatcher(jspPage);

        view.forward(request,response);
    }

    public void DoPost(HttpServletRequest request, HttpServletResponse response)  throws ServletException,IOException{
        String pageName = "form.jsp";

        String name = request.getParameter("name");

        request.setAttribute("name",name);

        RequestDispatcher page = request.getRequestDispatcher(pageName);
        page.forward(request,response);

    }
}
