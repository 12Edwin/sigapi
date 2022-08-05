package com.jetbrians.sigapi.control;

import com.jetbrians.sigapi.model.BeanDevice;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletDevice",
        urlPatterns = {
        "/list-devices", //get
        "/get-device",  //get
        "/create-device", //get
        "/save-device", //post
        "/update-device", //post
        "/delete-device"  //post
        }
)
public class ServletDevice extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getServletPath();
        ServiceDevice serviceDevice;

        switch (option){
            case "/list-devices":
                serviceDevice= new ServiceDevice();
                List<BeanDevice> ListDevice= serviceDevice.listDevice();

                request.setAttribute("list", ListDevice);
                request.getRequestDispatcher("WEB-INF/view/list-devices.jsp").forward(request,response);
                break;
            case "/get-device":

                break;
            case "/create-device":

                break;
            default:

                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
