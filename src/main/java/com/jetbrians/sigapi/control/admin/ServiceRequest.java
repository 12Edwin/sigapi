package com.jetbrians.sigapi.control.admin;

import com.jetbrians.sigapi.model.admin.BeanRequest;
import com.jetbrians.sigapi.model.admin.DaoRequest;

import java.util.List;

public class ServiceRequest {

    public  List<BeanRequest> listRequest(){
        DaoRequest daoRequest= new DaoRequest();
        List<BeanRequest> listRequest= daoRequest.listRequest();
        return listRequest;
    }
    public BeanRequest getRequest(int id){
        DaoRequest daoRequest = new DaoRequest();
        BeanRequest request= daoRequest.getRequest(id);
        return request;
    }
    public List<BeanRequest> history(){
        DaoRequest daoRequest = new DaoRequest();
        List<BeanRequest> history = daoRequest.history();
        return history;
    }
}
