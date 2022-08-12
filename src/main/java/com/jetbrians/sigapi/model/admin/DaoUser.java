package com.jetbrians.sigapi.model.admin;

import utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DaoUser {
    public List<BeanUser> listUser(){
        List<BeanUser> listUser = new ArrayList<>();

        try
        {
            Connection connection= MySQLConnection.getConnection();
            Statement statement= connection.createStatement();
            ResultSet rs= statement.executeQuery("SELECT * FROM usuarios;");

            while (rs.next()){
                BeanUser user = new BeanUser();
                user.setId(rs.getString("id"));
                user.setNombre(rs.getString("nombre"));
                user.setApellidoP(rs.getString("apellidoPaterno"));
                user.setDivision(rs.getInt("idDivision"));
                user.setTelefono( rs.getLong("telefono"));
                user.setIdRol(rs.getInt("idRol"));
                listUser.add(user);
            };

            rs.close();
            connection.close();
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        System.out.println(listUser);
        return listUser;
    }
    public BeanUser getUser(String idUser){
        BeanUser user = new BeanUser();

        try (
                Connection con = MySQLConnection.getConnection();
                PreparedStatement pstm = con.prepareStatement("SELECT * FROM usuarios where id = ?;");
        ){

            pstm.setString(1, idUser);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()){
                user.setId(rs.getString("id"));
                user.setNombre(rs.getString("nombre"));
                user.setDivision(rs.getInt("Division"));
                user.setCalle(rs.getString("calle"));
                user.setApellidoM(rs.getString("apellidoMaterno"));
                user.setContrasena(rs.getString("contraseña"));
                user.setColonia(rs.getString("colonia"));
                user.setCp(rs.getInt("cp"));
                user.setIdRol(rs.getInt("idRol"));
                user.setMunicipio(rs.getString("municipio"));
                user.setTelefono(rs.getInt("telefono"));
                user.setPais(rs.getString("pais"));
                user.setNumero(rs.getInt("numero"));
                user.setCurp(rs.getString("curp"));
                user.setCorreo(rs.getString("correo"));
                user.setApellidoP(rs.getString("apellidoPaterno"));
                user.setEstado(rs.getString("estado"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return user;
    }
    public boolean saveUser(BeanUser user){
        boolean result= false;

        try
                (Connection con  = MySQLConnection.getConnection();
                 PreparedStatement pstm = con.prepareStatement("INSERT INTO usuarios (nombre,apellidoPaterno,apellidoMaterno,id,correo,idDivision,curp,telefono,calle,numero,colonia,municipio,cp,estado,pais,contraseña,idRol) VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);");

                )


        {
            pstm.setString(1, user.getNombre());
            pstm.setString(2, user.getApellidoP());
            pstm.setString(3,user.getApellidoM());
            pstm.setString(4,user.getId());
            pstm.setString(5,user.getCorreo());
            pstm.setInt(6, user.getDivision());
            pstm.setString(7, user.getCurp());
            pstm.setLong(8,user.getTelefono());
            pstm.setString(9,user.getCalle());
            pstm.setInt(10,user.getNumero());
            pstm.setString(11, user.getColonia());
            pstm.setString(12, user.getMunicipio());
            pstm.setInt(13,user.getCp());
            pstm.setString(14,user.getEstado());
            pstm.setString(15,user.getPais());
            pstm.setString(16,user.getContrasena());
            pstm.setInt(17,user.getIdRol());

            result = pstm.executeUpdate() == 1;

        } catch(Exception e) {
            e.printStackTrace();
        }
        System.out.println(result+"-----------------------------------");
        return result;
    }
}
