package com.jetbrians.sigapi.control;

import com.jetbrians.sigapi.model.BeanDevice;
import com.jetbrians.sigapi.model.DaoDevice;

import java.util.List;

public class ServiceDevice {
    public List<BeanDevice> listDevice(){
        DaoDevice daoDevice= new DaoDevice();
        List<BeanDevice> listDevice= daoDevice.listDevice();
        return listDevice;
    }
}
