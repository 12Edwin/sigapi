package com.jetbrians.sigapi.model.admin;

import utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DaoDevice {
    public List<BeanDevice> listDevice(){
        List<BeanDevice> listDevice = new ArrayList<>();

        try
        {
            Connection connection= MySQLConnection.getConnection();
            Statement statement= connection.createStatement();
            ResultSet rs= statement.executeQuery("SELECT * FROM dispositivos;");

            while (rs.next()){
                BeanDevice device = new BeanDevice();
                device.setId(rs.getInt("id"));
                device.setNombre(rs.getString("nombre"));
                device.setIdClasificacion(rs.getInt("idClasificacion"));
                device.setNoDisponible(rs.getInt("unidadesDisponibles"));

                listDevice.add(device);
            };

            rs.close();
            connection.close();
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return listDevice;
    }
    public BeanDevice getDevice(int id){
        BeanDevice device = new BeanDevice();

        try (
                Connection con = MySQLConnection.getConnection();
                PreparedStatement pstm = con.prepareStatement("SELECT * FROM dispositivos where id = ?;");
        ){

            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()){
                device.setId(rs.getInt("id"));
                device.setIdClasificacion(rs.getInt("idClasificacion"));
                device.setNombre(rs.getString("nombre"));
                device.setUnidades_total(rs.getInt("totalUnidades"));
                device.setDescripcion(rs.getString("descripcion"));
                device.setImagen(rs.getString("imagen"));
                device.setNoDisponible(rs.getInt("unidadesDisponibles"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return device;
    }
    public int updateDevice (BeanDevice device){
        int idGenerate = 0;

        try
                (Connection con  = MySQLConnection.getConnection();
                 PreparedStatement pstm = con.prepareStatement(
                         "UPDATE dispositivos set nombre=?, idClasificacion=?, descripcion=?, totalUnidades=?, unidadesDisponibles=?,imagen=? where id = ?",
                         Statement.RETURN_GENERATED_KEYS
                 );
                )
        {

            pstm.setString(1, device.getNombre());
            pstm.setInt(2, device.getIdClasificacion());
            pstm.setString(3, device.getDescripcion());
            pstm.setInt(4,device.getUnidades_total());
            pstm.setInt(5,device.getNoDisponible());
            pstm.setString(6,device.getImagen());
            pstm.setInt(7,device.getId());
            if (pstm.executeUpdate()==1){
                try(ResultSet keys= pstm.getGeneratedKeys()){
                    idGenerate=keys.next()?keys.getInt(1):0;
                }
            }

        } catch(Exception e) {
            e.printStackTrace();
        }
        idGenerate=device.getId();
        System.out.println("------------------"+idGenerate+"----------------------");
        return idGenerate;
    }
    public int saveDevice(BeanDevice device){
        int idGenerated = 0;

        try
                (Connection con  = MySQLConnection.getConnection();
                 PreparedStatement pstm = con.prepareStatement("INSERT INTO dispositivos (nombre,IdClasificacion,unidadesDisponibles,imagen,descripcion,totalUnidades) VALUES(?,?,?,?,?,?);",
                         Statement.RETURN_GENERATED_KEYS
                         );
                )


        {
            pstm.setString(1, device.getNombre());
            pstm.setInt(2, device.getIdClasificacion());
            pstm.setInt(3,device.getNoDisponible());
            pstm.setString(4,device.getImagen());
            pstm.setString(5, device.getDescripcion());
            pstm.setInt(6,device.getUnidades_total());
            if (pstm.executeUpdate()==1){
                try(ResultSet keys=pstm.getGeneratedKeys()){
                    idGenerated=keys.next()?keys.getInt(1):0;
                }
            }

        } catch(Exception e) {
            e.printStackTrace();
        }

        return idGenerated;
    }
    public boolean deleteDevice(int id){
        boolean result = false;

        try
                (Connection con  = MySQLConnection.getConnection();
                 PreparedStatement pstm = con.prepareStatement("DELETE FROM dispositivos WHERE id = ?;");

                )
        {
            pstm.setInt(1, id);
            result = pstm.executeUpdate() == 1;

        } catch(Exception e) {
            e.printStackTrace();
        }

        return result;
    }
    public List<BeanCategory> listCategory(){
        List<BeanCategory> listCategory= new ArrayList<>();
        try
        {
            Connection connection= MySQLConnection.getConnection();
            Statement statement= connection.createStatement();
            ResultSet rs= statement.executeQuery("SELECT * FROM clasificacion;");

            while (rs.next()){
                BeanCategory category = new BeanCategory();
                category.setId(rs.getInt("id"));
                category.setNombre(rs.getString("nombre"));


                listCategory.add(category);
            };

            rs.close();
            connection.close();
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return listCategory;
    }
}
