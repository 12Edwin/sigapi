package com.jetbrians.sigapi.control;

import com.jetbrians.sigapi.model.BeanAuthentication;
import com.jetbrians.sigapi.model.DaoAuthentication;

public class ServiceAuthentication {
    public BeanAuthentication login(String nickname, String password){
        DaoAuthentication daoAuthentication= new DaoAuthentication();

        return  daoAuthentication.login(nickname,password);
    }
}
