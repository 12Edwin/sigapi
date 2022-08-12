package com.jetbrians.sigapi.model.admin;

import utils.MySQLConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class DaoSanction {
    public List<BeanSanction> listSanction(){
        List<BeanSanction> listSanction = new ArrayList<>();

        try
        {
            Connection connection= MySQLConnection.getConnection();
            Statement statement= connection.createStatement();
            ResultSet rs= statement.executeQuery("SELECT * FROM sanciones;");

            while (rs.next()){
                BeanSanction sanction = new BeanSanction();
                sanction.setIdDispositivo(rs.getLong("Id"));
                sanction.setNombreDispositivo(rs.getString("nombreDispositivo"));
                sanction.setNombreUsuario(rs.getString("nombreUsuario"));
                sanction.setTipoSancion(rs.getString("tipoSancion"));
                sanction.setDescripcionSancion( rs.getString("descripcion"));
                listSanction.add(sanction);
            };

            rs.close();
            connection.close();
            statement.close();

        }catch (Exception e){
            e.printStackTrace();
        }
        return listSanction;
    }
    public BeanSanction getSanction (int id){
        BeanSanction sanction = new BeanSanction();

        try (
                Connection con = MySQLConnection.getConnection();
                PreparedStatement pstm = con.prepareStatement("SELECT * FROM sanciones where id = ?;");
        ){

            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()){
                sanction.setIdDispositivo(rs.getLong("Id"));
                sanction.setNombreDispositivo(rs.getString("nombreDispositivo"));
                sanction.setNombreUsuario(rs.getString("nombreUsuario"));
                sanction.setTipoSancion(rs.getString("tipoSancion"));
                sanction.setDescripcionSancion( rs.getString("descripcion"));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return sanction;
    }
}
