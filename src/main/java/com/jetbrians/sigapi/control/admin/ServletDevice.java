package com.jetbrians.sigapi.control.admin;

import com.jetbrians.sigapi.model.admin.BeanCategory;
import com.jetbrians.sigapi.model.admin.BeanDevice;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletDevice",
        urlPatterns = {
        "/inventory", //get
        "/get-device",  //get
        "/save-device", //post
        "/update-device", //post
        "/delete-device"  //post
        }
)
@MultipartConfig(
        fileSizeThreshold = 1024*1024,
        maxFileSize = 1024*1024*5,
        maxRequestSize = 1024*1024*5*5
)
public class ServletDevice extends HttpServlet {

    private static final String UPLOAD_DIRECTORY = "C:\\Users\\elpor\\Documents\\Intellij\\sigapi\\src\\main\\java\\images";
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getServletPath();
        ServiceDevice serviceDevice;

        switch (option){
            case "/inventory":
                serviceDevice= new ServiceDevice();
                List<BeanDevice> ListDevice= serviceDevice.listDevice();
                List<BeanCategory> ListCategory= serviceDevice.listCategory();
                request.setAttribute("listDevice", ListDevice);
                request.setAttribute("listCategory", ListCategory);
                System.out.println(ListCategory);
                System.out.println(ListDevice);
                request.getRequestDispatcher("WEB-INF/view/admin/inventory.jsp").forward(request,response);
                break;
            case "/get-device":
                String idDeviceString = request.getParameter("idDevice") != null ? request.getParameter("idDevice") : "0";

                try {
                    int idDevice = Integer.parseInt(idDeviceString);
                    serviceDevice = new ServiceDevice();
                    BeanDevice device = serviceDevice.getDevice(idDevice); //DAO consulta a la db
                    request.setAttribute("deviceX", device);
                    request.getRequestDispatcher("/WEB-INF/view/admin/modify-device.jsp").forward(request,response);
                } catch (Exception e) {
                    e.printStackTrace();
                    response.sendRedirect("inventory");
                }
                break;
            default:
                request.getRequestDispatcher("/WEB-INF/view/admin/inventory.jsp").forward(request,response);
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getServletPath();
        ServiceDevice serviceDevice;

        switch (option){
            case "/update-device":
                String idString = request.getParameter("id") != null ? request.getParameter("id") : "0";
                String NombreUpdate = request.getParameter("nombre") != null ? (request.getParameter("nombre")) : "";
                String IdClasificacionUpdate = request.getParameter("IdClasificacion") != null ? (request.getParameter("IdClasificacion")) : "0";
                String UnidadesTotalUpdate = request.getParameter("noTotal")!= null ? (request.getParameter("noTotal")): "0";
                String DescripcionUpdate = request.getParameter("descripcion")!= null ? (request.getParameter("descripcion")): "";
                String stringNoDisponible = request.getParameter("restantes")!= null ? (request.getParameter("restantes")): "";
                Part fileRequest2=request.getPart("imagen");


                    int ids = Integer.parseInt(idString);
                    int IdClasificacion = Integer.parseInt(IdClasificacionUpdate);
                    int UnidadesTotal = Integer.parseInt(UnidadesTotalUpdate);
                    int noDisponibles= Integer.parseInt(stringNoDisponible);
                System.out.println(DescripcionUpdate+UnidadesTotal+ids+noDisponibles);
                if (fileRequest2!=null){
                    BeanDevice device=new BeanDevice();
                    String fileName=fileRequest2.getSubmittedFileName();
                    try {
                        device = new BeanDevice(DescripcionUpdate, ids, NombreUpdate, IdClasificacion,UnidadesTotal, fileName, noDisponibles);
                        ServiceDevice serviceDevice1=new ServiceDevice();
                        int idGenerated=serviceDevice1.updateDevice(device);
                        if(idGenerated>0){
                            String uploadPath=UPLOAD_DIRECTORY+ File.separator+ idGenerated;
                            File directory=new File(uploadPath);
                            if (!directory.exists()) {
                                directory.mkdir();
                            }

                            fileRequest2.write(uploadPath+File.separator+fileName);
                        }
                        response.sendRedirect("inventory");

                    }catch (Exception e){
                        e.printStackTrace();
                        response.sendRedirect("inventory");
                    }
                }else{
                    response.sendRedirect("inventory");
                }

                break;
            case "/save-device":
                String name=request.getParameter("nombre")!=null?request.getParameter("nombre"):"";
                String stringIdCategoria=request.getParameter("idCategoria")!=null?request.getParameter("idCategoria"):"0";
                String stringTotalUnidades=request.getParameter("totalUnidades")!=null?request.getParameter("totalUnidades"):"0";
                String descripcion=request.getParameter("descripcion")!=null?request.getParameter("descripcion"):"";
                Part fileRequest=request.getPart("photo");
                int idCategoria= Integer.parseInt(stringIdCategoria);
                int totalUnidades= Integer.parseInt(stringTotalUnidades);
                int noDisponible= totalUnidades;

                if (fileRequest!=null){
                    BeanDevice device=new BeanDevice();
                    String fileName=fileRequest.getSubmittedFileName();
                    try {
                        device.setNombre(name);
                        device.setIdClasificacion(idCategoria);
                        device.setUnidades_total(totalUnidades);
                        device.setDescripcion(descripcion);
                        device.setNoDisponible(noDisponible);
                        device.setImagen(fileName);
                        ServiceDevice serviceDevice1=new ServiceDevice();
                        int idGenerated=serviceDevice1.saveDevice(device);
                        if(idGenerated>0){
                            String uploadPath=UPLOAD_DIRECTORY+ File.separator+ idGenerated;
                            File directory=new File(uploadPath);
                            if (!directory.exists()) {
                                directory.mkdir();
                            }
                            fileRequest.write(uploadPath+File.separator+fileName);
                        }
                        response.sendRedirect("inventory");



                    }catch (Exception e){
                        e.printStackTrace();
                        response.sendRedirect("inventory");
                    }
                }else{
                    response.sendRedirect("inventory");
                }
                break;
            case "/delete-device":
                String idStringDelete = request.getParameter("id") != null ? request.getParameter("id") : "0";

                try {
                    int id = Integer.parseInt(idStringDelete);
                    ServiceDevice serviceDevice1 = new ServiceDevice();
                    boolean result = serviceDevice1.deleteDevice(id);

                    response.sendRedirect("Inventory?result-delete="+(result ? "ok" : "error"));
                } catch (Exception e) {
                    response.sendRedirect("inventory");
                }
                break;
            default:

                break;
        }
    }
}
