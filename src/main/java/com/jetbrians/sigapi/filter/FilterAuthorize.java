package com.jetbrians.sigapi.filter;

import jakarta.servlet.*;
import jakarta.servlet.annotation.*;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebFilter(filterName = "FilterAuthorize",
        urlPatterns ={
        "/*"
        }
)
public class FilterAuthorize implements Filter {
    String whiteList[];

    public void init(FilterConfig config) throws ServletException {
        System.out.println("Filtro iniciado");
        whiteList= new String[2];
        whiteList[0]="/login";
        whiteList[1]="/index.jsp";
    }

    public void destroy() {
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
        HttpServletRequest req= (HttpServletRequest) request;
        String path = req.getServletPath();
        System.out.println("Entra a "+path);

        boolean isPublic = false;
        for (String item:whiteList){
            if (item.equals(path)) {
                isPublic=true;
                break;
            }
        }

        if (isPublic) {
            chain.doFilter(request, response);
        } else {
            HttpSession session = req.getSession(false);
            if (session != null) {
                System.out.println("Hay session");
                System.out.println(session);
                if (session.getAttribute("name")!=null){
                    System.out.println("Ya inicio sesión");
                    chain.doFilter(request, response);
                } else {
                    System.out.println("No ha iniciado sesion");
                    ((HttpServletResponse) response).sendRedirect("index.jsp");
                }
            } else {
                System.out.println("No hay session");
                ((HttpServletResponse) response).sendRedirect("index.jsp");
            }
        }

        chain.doFilter(request, response);
    }
}
