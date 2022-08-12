package com.jetbrians.sigapi.control.admin;



import com.jetbrians.sigapi.model.admin.BeanRequest;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletRequest", urlPatterns = {
        "/list-requests",
        "/get-request",
        "/history",
        "/request-device"
})
public class ServletRequest extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getServletPath();
        ServiceRequest serviceRequest;

        switch (option){
            case "/list-requests":
                serviceRequest = new ServiceRequest();
                List<BeanRequest> listRequest = serviceRequest.listRequest();
                request.setAttribute("list", listRequest);
                try {
                    serviceRequest= new ServiceRequest();
                    BeanRequest requests1 = serviceRequest.getRequest(listRequest.get(0).getId()); //DAO consulta a la db
                    request.setAttribute("requestX", requests1);
                }catch (Exception e){
                    e.printStackTrace();
                }
                request.getRequestDispatcher("WEB-INF/view/admin/list-requests.jsp").forward(request,response);
                break;
            case "/get-request":
                String idString = request.getParameter("id") != null ? request.getParameter("id") : "0";
                try {
                    int id = Integer.parseInt(idString);
                    serviceRequest = new ServiceRequest();
                    BeanRequest requests = serviceRequest.getRequest(id); //DAO consulta a la db
                    request.setAttribute("requestX", requests);
                    request.getRequestDispatcher("/WEB-INF/view/admin/list-request.jsp").forward(request,response);
                } catch (Exception e) {
                    response.sendRedirect("list-request");
                }
                break;
            case "/history":
                serviceRequest = new ServiceRequest();
                /*List<BeanRequest> history = serviceRequest.history();
                request.setAttribute("list", history);*/
                request.getRequestDispatcher("WEB-INF/view/admin/history.jsp").forward(request,response);
                break;
            case "/request-device":
                request.getRequestDispatcher("WEB-INF/view/user/request-device.jsp").forward(request,response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getServletPath();

    }
}
