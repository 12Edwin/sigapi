package com.jetbrians.sigapi.control.admin;

import com.jetbrians.sigapi.control.ServiceAuthentication;
import com.jetbrians.sigapi.model.BeanAuthentication;
import com.jetbrians.sigapi.model.admin.BeanDevice;
import com.jetbrians.sigapi.model.admin.BeanUser;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ServletAuthentication",
        urlPatterns = {
        "/start-admin", //get
        "/start-user", //get
        "/login", //post
        "/logout", //get
        "/signup", //post
                "/perfil"
        }
)
public class ServletAuthentication extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getServletPath();
        switch (option){
            case "/start-admin":
                ServiceDevice serviceDevice= new ServiceDevice();
                List<BeanDevice> devices= serviceDevice.listDevice();
                int CantidadDispositivos = devices.size();
                request.setAttribute("devicesX",CantidadDispositivos);

                ServiceUser serviceUser= new ServiceUser();
                List<BeanUser> users= serviceUser.listUser();
                int doscentes=0;
                try {
                    for (int i=0;i<=users.size();i++){
                        int rol = users.get(i).getIdRol();
                        if (rol==2){
                            doscentes+=1;
                        }
                    }
                }catch (Exception e){
                    e.printStackTrace();
                }

                int CantidadUsuarios= users.size();
                request.setAttribute("usersX",doscentes);

                request.getRequestDispatcher("WEB-INF/view/admin/start-admin.jsp").forward(request,response);
                break;
            case "/start-user":
                request.getRequestDispatcher("WEB-INF/view/user/start-user.jsp").forward(request,response);
                break;
            case"/logout":
                HttpSession session= request.getSession(false);
                if (session!=null){
                    session.invalidate();
                    response.sendRedirect("index.jsp");
                }else {
                    response.sendRedirect("index.jsp");
                }
                break;
            case "/perfil":
                request.getRequestDispatcher("WEB-INF/view/user/perfil.jsp").forward(request,response);
            default:
                response.sendRedirect("index.jsp");
                break;
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String option = request.getServletPath();
        switch (option){
            case "/login":
                String nickname = request.getParameter("nickname") != null ? request.getParameter("nickname") : "";
                String password = request.getParameter("password") != null ? request.getParameter("password") : "";

                ServiceAuthentication serviceAuthenticacion = new ServiceAuthentication();
                BeanAuthentication userAuthentication =  serviceAuthenticacion.login(nickname,password);

                if (userAuthentication.getUserId() != null){
                    HttpSession session = request.getSession(true);
                    session.setAttribute("name", userAuthentication.getNickname());
                    session.setAttribute("role", userAuthentication.getRol());
                    if (userAuthentication.getRol().equals("1")){
                        session.setAttribute("admin",userAuthentication.getRol());
                        response.sendRedirect("start-admin");
                    }else {
                        session.setAttribute("user",userAuthentication.getRol());
                        response.sendRedirect("start-user");
                    }
                } else {
                    response.sendRedirect("index.jsp?message=error");
                }
                break;
            case "/signup":
                try {
                    String nombre = request.getParameter("nombre")!= null ? request.getParameter("nombre"):"";
                    String apellidoP = request.getParameter("apellidoP")!= null ? request.getParameter("apellidoP"):"";
                    String apellidoM = request.getParameter("apellidoM")!= null ? request.getParameter("apellidoM"):"";
                    String matricula = request.getParameter("matricula")!= null ? request.getParameter("matricula"):"";
                    String stringIdDivision = request.getParameter("idDivision")!= null ? request.getParameter("idDivision"):"";
                    String correo = request.getParameter("correo")!= null ? request.getParameter("correo"):"";
                    String curp = request.getParameter("curp")!= null ? request.getParameter("curp"):"";
                    String stringTelefono = request.getParameter("telefono")!= null ? request.getParameter("telefono"):"";
                    String calle = request.getParameter("calle")!= null ? request.getParameter("calle"):"";
                    String stringNumero = request.getParameter("numero")!= null ? request.getParameter("numero"):"";
                    String colonia = request.getParameter("colonia")!= null ? request.getParameter("colonia"):"";
                    String municipio = request.getParameter("municipio")!= null ? request.getParameter("municipio"):"";
                    String stringCp = request.getParameter("cp")!= null ? request.getParameter("cp"):"";
                    String estado = request.getParameter("estado")!= null ? request.getParameter("estado"):"";
                    String pais = request.getParameter("pais")!= null ? request.getParameter("pais"):"";
                    String pass = request.getParameter("pass")!= null ? request.getParameter("pass"):"";

                    int iDivision= Integer.parseInt(stringIdDivision);
                    long Telefono= Long.parseLong(stringTelefono);
                    int Numero= Integer.parseInt(stringNumero);
                    int cp = Integer.parseInt(stringCp);

                    ServiceUser serviceUser = new ServiceUser();
                    BeanUser user = new BeanUser();
                    user.setNombre(nombre);
                    user.setApellidoP(apellidoP);
                    user.setApellidoM(apellidoM);
                    user.setId(matricula);
                    user.setDivision(iDivision);
                    user.setCorreo(correo);
                    user.setCurp(curp);
                    user.setTelefono(Telefono);
                    user.setCalle(calle);
                    user.setNumero(Numero);
                    user.setColonia(colonia);
                    user.setMunicipio(municipio);
                    user.setCp(cp);
                    user.setEstado(estado);
                    user.setPais(pais);
                    user.setContrasena(pass);
                    user.setIdRol(2);

                    boolean result = serviceUser.saveUser(user);
                    if (result){
                        response.sendRedirect("index.jsp?message=ok");
                    }else {
                        response.sendRedirect("signup.jsp?message=error");
                    }

                } catch (Exception e){
                    e.printStackTrace();
                    response.sendRedirect("index.jsp");
                }
                break;
            default:
                response.sendRedirect("index.jsp");
                break;
        }
    }
}

