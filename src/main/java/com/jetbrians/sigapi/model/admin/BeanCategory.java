package com.jetbrians.sigapi.model.admin;

public class BeanCategory {
    int id;
    String nombre;

    public BeanCategory() {
    }

    public BeanCategory(int id, String nombre) {
        this.id = id;
        this.nombre = nombre;
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
}
