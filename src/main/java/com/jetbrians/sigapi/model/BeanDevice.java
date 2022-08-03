package com.jetbrians.sigapi.model;

public class BeanDevice {

    private long id;
    private String nombre;
    private long idClasificacion;
    private int noDisponible;

    public BeanDevice() {

    }

    public BeanDevice(long id, String nombre, long idClasificacion, int noDisponible) {
        this.id = id;
        this.nombre = nombre;
        this.idClasificacion = idClasificacion;
        this.noDisponible = noDisponible;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public long getIdClasificacion() {
        return idClasificacion;
    }

    public void setIdClasificacion(long idClasificacion) {
        this.idClasificacion = idClasificacion;
    }

    public int getNoDisponible() {
        return noDisponible;
    }

    public void setNoDisponible(int noDisponible) {
        this.noDisponible = noDisponible;
    }
}
