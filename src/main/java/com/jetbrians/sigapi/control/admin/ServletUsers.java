package com.jetbrians.sigapi.control.admin;

import com.jetbrians.sigapi.model.admin.BeanUser;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletUsers", urlPatterns = {
        "/list-users"
})
public class ServletUsers extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getServletPath();
        ServiceUser serviceUser;

        switch (option){
            case "/list-users":
                serviceUser = new ServiceUser();
                List<BeanUser> listUser = serviceUser.listUser();
                request.setAttribute("list", listUser);
                request.getRequestDispatcher("/WEB-INF/view/admin/list-users.jsp").forward(request,response);

                break;

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
