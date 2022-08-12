package com.jetbrians.sigapi.model.admin;

public class BeanSanction {
    long idDispositivo;
    String nombreDispositivo;
    String descripcionSancion;
    String nombreUsuario;
    String tipoSancion;

    public BeanSanction() {
    }

    public BeanSanction(long idDispositivo, String nombreDispositivo, String descripcionSancion, String nombreUsuario, String tipoSancion) {
        this.idDispositivo = idDispositivo;
        this.nombreDispositivo = nombreDispositivo;
        this.descripcionSancion = descripcionSancion;
        this.nombreUsuario = nombreUsuario;
        this.tipoSancion = tipoSancion;
    }

    public long getIdDispositivo() {
        return idDispositivo;
    }

    public void setIdDispositivo(long idDispositivo) {
        this.idDispositivo = idDispositivo;
    }

    public String getNombreDispositivo() {
        return nombreDispositivo;
    }

    public void setNombreDispositivo(String nombreDispositivo) {
        this.nombreDispositivo = nombreDispositivo;
    }

    public String getDescripcionSancion() {
        return descripcionSancion;
    }

    public void setDescripcionSancion(String descripcionSancion) {
        this.descripcionSancion = descripcionSancion;
    }

    public String getNombreUsuario() {
        return nombreUsuario;
    }

    public void setNombreUsuario(String nombreUsuario) {
        this.nombreUsuario = nombreUsuario;
    }

    public String getTipoSancion() {
        return tipoSancion;
    }

    public void setTipoSancion(String tipoSancion) {
        this.tipoSancion = tipoSancion;
    }
}
