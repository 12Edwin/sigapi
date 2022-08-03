package com.jetbrians.sigapi.model;

import utils.MySQLConnection;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DaoAuthentication {
    public  BeanAuthentication login(String nickname, String password){
        BeanAuthentication userAuthentication= new BeanAuthentication();
        try
                (
                        Connection con= MySQLConnection.getConnection();
                        PreparedStatement pstm= con.prepareStatement("SELECT * FROM users WHERE  nickname=? AND password= ?;");
                )
        {
            pstm.setString(1,nickname);
            pstm.setString(2,password);
            ResultSet rs = pstm.executeQuery();

            while (rs.next()){
                userAuthentication.setUserId(rs.getInt("users_id"));
                userAuthentication.setNickname(rs.getString("nickname"));
                userAuthentication.setRol(rs.getString("rol"));
            }

        }catch (Exception e){
            e.printStackTrace();
        }
        return userAuthentication;
    }
}
