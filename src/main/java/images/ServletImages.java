package images;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.*;

@WebServlet(name = "ServletImages", value = "/images")
public class ServletImages extends HttpServlet {

    private static final String UPLOAD_DIRECTORY = "C:\\Users\\elpor\\Documents\\Intellij\\sigapi\\src\\main\\java\\images";
    private  final int ARBITARY_ZISE=1048;

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("image/jpg");
        response.setHeader("Content-disposition","attachment; filename=sample.png");
        String idDevice=request.getParameter("id")!=null?request.getParameter("id"):"0";
        if (!idDevice.equals("0")){
            File file=new File((UPLOAD_DIRECTORY+File.separator+idDevice));
            if (file.exists()){
                File[] files=file.listFiles();
                response.setHeader("Content-disposition","attachment;filename"+files[0].getName());
                try (InputStream in=new FileInputStream(files[0]);
                     OutputStream out =response.getOutputStream()){
                    byte[] buffer=new byte[ARBITARY_ZISE];
                    int numBytesRead;
                    while ((numBytesRead=in.read(buffer))>0){
                        out.write(buffer,0,numBytesRead);
                    }

                }
            }

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
