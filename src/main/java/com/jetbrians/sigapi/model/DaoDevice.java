package com.jetbrians.sigapi.model;

import utils.MySQLConnection;

import java.sql.Connection;
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
            ResultSet rs= statement.executeQuery("SELECT * FROM DISPOSITIVOS;");

            while (rs.next()){
                BeanDevice device = new BeanDevice();
                device.setId(rs.getLong("id"));
                device.setNombre(rs.getString("nombre"));
                device.setIdClasificacion(rs.getInt("idClasificacion"));
                device.setNoDisponible(rs.getInt("noDisponible"));

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
}
