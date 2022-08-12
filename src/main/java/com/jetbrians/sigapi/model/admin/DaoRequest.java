package com.jetbrians.sigapi.model.admin;

import utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DaoRequest {
    public List<BeanRequest> listRequest(){
        List<BeanRequest> listRequest = new ArrayList<>();

        try
        {
            Connection connection= MySQLConnection.getConnection();
            Statement statement= connection.createStatement();
            ResultSet rs= statement.executeQuery("SELECT * FROM solicitudes;");

            while (rs.next()){
                BeanRequest request = new BeanRequest();
                request.setId(rs.getInt("id"));
                request.setEstado(rs.getString("estado"));
                request.setNom_usuario(rs.getString("nombreDocente"));
                request.setNom_dispositivo(rs.getString("nombreDispositivo"));
                request.setRestantes( rs.getInt("unidadesDisponibles"));
                request.setIdClasificacion(rs.getInt("idClasificacion"));
                request.setDescripcion(rs.getString("descripcion"));
                request.setRestantes(rs.getInt("unidadesDisponibles"));
                request.setFechaSolicitada(rs.getString("fechaSolicitada"));
                request.setFechaEntrega(rs.getString("fechaEntrega"));
                request.setCorreo(rs.getString("correo"));
                request.setTelefono(rs.getLong("telefono"));
                request.setCp(rs.getInt("cp"));
                request.setColonia(rs.getString("colonia"));
                request.setCalle(rs.getString("calle"));
                request.setIdDivision(rs.getInt("idDivision"));
                request.setMunicipio(rs.getString("municipio"));
                request.setEstadoLugar(rs.getString("estadoLugar"));
                request.setNumero(rs.getInt("numero"));
                request.setApellidoPaterno(rs.getString("apellidoPaterno"));
                request.setApellidoMaterno(rs.getString("apellidoMaterno"));

                listRequest.add(request);
                System.out.println(request.getIdUsuario());
            };

            rs.close();
            connection.close();
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return listRequest;
    }
    public BeanRequest getRequest(int id){
        BeanRequest request = new BeanRequest();

        try (
                Connection con = MySQLConnection.getConnection();
                PreparedStatement pstm = con.prepareStatement("SELECT * FROM solicitudes where id = ?;");
        ){

            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()){
                request.setId(rs.getInt("id"));
                request.setNom_dispositivo(rs.getString("nombreDispositivo"));
                request.setIdClasificacion(rs.getInt("idClasificacion"));
                request.setDescripcion(rs.getString("descripcion"));
                request.setRestantes(rs.getInt("unidadesDisponibles"));
                request.setFechaSolicitada(rs.getString("fechaSolicitada"));
                request.setFechaEntrega(rs.getString("fechaEntrega"));
                request.setCorreo(rs.getString("correo"));
                request.setTelefono(rs.getLong("telefono"));
                request.setCp(rs.getInt("cp"));
                request.setColonia(rs.getString("colonia"));
                request.setCalle(rs.getString("calle"));
                request.setIdDivision(rs.getInt("idDivision"));
                request.setMunicipio(rs.getString("municipio"));
                request.setEstadoLugar(rs.getString("estadoLugar"));
                request.setNumero(rs.getInt("numero"));
                request.setApellidoPaterno(rs.getString("apellidoPaterno"));
                request.setApellidoMaterno(rs.getString("apellidoMaterno"));

            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return request;
    }
    public List<BeanRequest> history(){
        List<BeanRequest> history = new ArrayList<>();

        try
        {
            Connection connection= MySQLConnection.getConnection();
            Statement statement= connection.createStatement();
            ResultSet rs= statement.executeQuery("SELECT * FROM historial;");

            while (rs.next()){
                BeanRequest historyes = new BeanRequest();
                historyes.setId(rs.getInt("numeroPedido"));
                historyes.setIdClasificacion(rs.getInt("idClasificacion"));
                historyes.setNom_usuario(rs.getString("nombreUsuario"));
                historyes.setNom_dispositivo(rs.getString("nombreDispositivo"));
                historyes.setFechaSolicitada( rs.getString("fechaSolicitada"));
                historyes.setFechaEntrega(rs.getString("fechaEntrega"));
                historyes.setEstado(rs.getString("estado"));
                history.add(historyes);
            };

            rs.close();
            connection.close();
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return history;
    }
}
