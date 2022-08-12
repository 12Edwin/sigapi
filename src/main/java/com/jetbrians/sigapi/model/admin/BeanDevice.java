package com.jetbrians.sigapi.model.admin;

public class BeanDevice {

    private int id;
    private String nombre;
    private int idClasificacion;
    private int noDisponible;
    private String descripcion;
    private String imagen;
    private int unidades_total;

    public BeanDevice() {

    }

    public BeanDevice(String descripcion, int id, String nombre, int idClasificacion, int unidades_total,String imagen,int noDisponible) {
        this.id = id;
        this.nombre = nombre;
        this.idClasificacion = idClasificacion;
        this.unidades_total= unidades_total;
        this.descripcion= descripcion;
        this.imagen= imagen;
        this.noDisponible= noDisponible;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getUnidades_total() {
        return unidades_total;
    }

    public void setUnidades_total(int unidades_total) {
        this.unidades_total = unidades_total;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getIdClasificacion() {
        return idClasificacion;
    }

    public void setIdClasificacion(int idClasificacion) {
        this.idClasificacion = idClasificacion;
    }

    public int getNoDisponible() {
        return noDisponible;
    }

    public void setNoDisponible(int noDisponible) {
        this.noDisponible = noDisponible;
    }
}
