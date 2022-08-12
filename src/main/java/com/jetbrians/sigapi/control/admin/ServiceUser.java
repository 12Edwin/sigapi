package com.jetbrians.sigapi.control.admin;

import com.jetbrians.sigapi.model.admin.BeanUser;
import com.jetbrians.sigapi.model.admin.DaoUser;

import java.util.List;

public class ServiceUser {

    public List<BeanUser> listUser(){
        DaoUser daoUser= new DaoUser();
        List<BeanUser> listUser= daoUser.listUser();
        return listUser;
    }
    public BeanUser getUser(String userId){
        DaoUser daoUser= new DaoUser();
        BeanUser user= daoUser.getUser(userId);
        return user;
    }
    public boolean saveUser(BeanUser user){
        DaoUser daoUser= new DaoUser();
        boolean result= daoUser.saveUser(user);
        return result;
    }
}
