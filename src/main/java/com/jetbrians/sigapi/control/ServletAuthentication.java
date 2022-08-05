package com.jetbrians.sigapi.control;

import com.jetbrians.sigapi.model.BeanAuthentication;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ServletAuthentication",
        urlPatterns = {
        "/login",
        "/logout"
        }
)
public class ServletAuthentication extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getServletPath();
        if (option.equals("/logout")){
            HttpSession session= request.getSession(false);
            if (session!=null){
                session.invalidate();
                response.sendRedirect("index.jsp");
            }else {
                response.sendRedirect("index.jsp");
            }
        }else {
            response.sendRedirect("index.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getServletPath();
        if (option.equals("/login")){
            String nickname = request.getParameter("nickname")!=null? request.getParameter("nickname"):"";
            String password = request.getParameter("password")!=null? request.getParameter("password"):"";

            ServiceAuthentication serviceAuthentication= new ServiceAuthentication();
            BeanAuthentication userAuthentication = serviceAuthentication.login(nickname,password);
            if (userAuthentication.getUserId()!=0){
                HttpSession session= request.getSession(true);
                session.setAttribute("name",userAuthentication.getNickname());
                session.setAttribute("role",userAuthentication.getRol());
                if (userAuthentication.getRol().equals("1")){
                    session.setAttribute("admin",userAuthentication.getRol());
                    response.sendRedirect("list-devices");
                }else {
                    session.setAttribute("user",userAuthentication.getRol());
                    response.sendRedirect("request");
                }
            }else {
                response.sendRedirect("index.jsp?message=error");
            }
        }
    }
}
