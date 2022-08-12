package com.jetbrians.sigapi.control.admin;

import com.jetbrians.sigapi.model.admin.BeanSanction;
import com.jetbrians.sigapi.model.admin.DaoSanction;

import java.util.List;

public class ServiceSanction {
    public List<BeanSanction> listSanction(){
        DaoSanction daoSanction= new DaoSanction();
        List<BeanSanction> sanctions= daoSanction.listSanction();
        return sanctions;
    }
    public BeanSanction getSanction(int id){
        DaoSanction daoSanction= new DaoSanction();
        BeanSanction sanction= daoSanction.getSanction(id);
        return sanction;
    }
}
