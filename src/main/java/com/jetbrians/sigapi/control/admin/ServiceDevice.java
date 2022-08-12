package com.jetbrians.sigapi.control.admin;

import com.jetbrians.sigapi.model.admin.BeanCategory;
import com.jetbrians.sigapi.model.admin.BeanDevice;
import com.jetbrians.sigapi.model.admin.DaoDevice;

import java.util.List;

public class ServiceDevice {
    public List<BeanDevice> listDevice(){
        DaoDevice daoDevice= new DaoDevice();
        List<BeanDevice> listDevice= daoDevice.listDevice();
        return listDevice;
    }
    public BeanDevice getDevice(int DeviceId){
        DaoDevice daoDevice= new DaoDevice();
        BeanDevice device= daoDevice.getDevice(DeviceId);
        return device;
    }
    public int updateDevice (BeanDevice device){
        DaoDevice daoDevice = new DaoDevice();
        int result = daoDevice.updateDevice(device);
        return result;
    }
    public int saveDevice (BeanDevice device){
        DaoDevice daoDevice= new DaoDevice();
        int result= daoDevice.saveDevice(device);
        return result;
    }
    public boolean deleteDevice(int id){
        DaoDevice daoDevice= new DaoDevice();
        boolean result= daoDevice.deleteDevice(id);
        return result;
    }
    public List<BeanCategory> listCategory(){
        DaoDevice daoDevice= new DaoDevice();
        List<BeanCategory> category= daoDevice.listCategory();
        return category;
    }
}
