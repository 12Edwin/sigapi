package com.jetbrians.sigapi.control.admin;

import com.jetbrians.sigapi.model.admin.BeanSanction;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletSanction", urlPatterns = {
        "/list-sanctions",
        "/get-sanction",
        "/save-sanction",
        "/delete-sanction"
})
public class ServletSanction extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServiceSanction serviceSanction= new ServiceSanction();
        String option = request.getServletPath();
        switch (option){
            case "/list-sanctions":
                serviceSanction = new ServiceSanction();
                List<BeanSanction> listSanction = serviceSanction.listSanction();
                request.setAttribute("list", listSanction);
                request.getRequestDispatcher("WEB-INF/view/admin/list-sanctions.jsp").forward(request,response);
                break;
            case "get-sanction":
                String idString = request.getParameter("id") != null ? request.getParameter("id") : "0";
                try {
                    int id = Integer.parseInt(idString);
                    serviceSanction = new ServiceSanction();
                    BeanSanction sanction = serviceSanction.getSanction(id); //DAO consulta a la db
                    request.setAttribute("sanctionX", sanction);
                    request.getRequestDispatcher("/WEB-INF/view/admin/list-sanction.jsp").forward(request,response);
                } catch (Exception e) {
                    response.sendRedirect("list-sanction");
                }
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
