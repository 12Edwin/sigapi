package com.jetbrians.sigapi.model.admin;

public class BeanUser {
    String id;
    int division;
    String apellidoP;
    String nombre;
    long telefono;
    String apellidoM;
    String correo;
    String curp;
    String calle;
    int numero;
    String colonia;
    String municipio;
    int cp;
    String estado;
    String pais;
    String contrasena;
    int idRol;

    public BeanUser(String id, int division, String apellidoP, String nombre, long telefono, String apellidoM, String correo, String curp, String calle, int numero, String colonia, String municipio, int cp, String estado, String pais, String contrasena, int idRol) {
        this.id = id;
        this.division = division;
        this.apellidoP = apellidoP;
        this.nombre = nombre;
        this.telefono = telefono;
        this.apellidoM = apellidoM;
        this.correo = correo;
        this.curp = curp;
        this.calle = calle;
        this.numero = numero;
        this.colonia = colonia;
        this.municipio = municipio;
        this.cp = cp;
        this.estado = estado;
        this.pais = pais;
        this.contrasena = contrasena;
        this.idRol = idRol;
    }

    public BeanUser() {
    }

    public String getApellidoM() {
        return apellidoM;
    }

    public void setApellidoM(String apellidoM) {
        this.apellidoM = apellidoM;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public String getCurp() {
        return curp;
    }

    public void setCurp(String curp) {
        this.curp = curp;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getColonia() {
        return colonia;
    }

    public void setColonia(String colonia) {
        this.colonia = colonia;
    }

    public String getMunicipio() {
        return municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    public int getCp() {
        return cp;
    }

    public void setCp(int cp) {
        this.cp = cp;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getDivision() {
        return division;
    }

    public void setDivision(int division) {
        this.division = division;
    }

    public String getApellidoP() {
        return apellidoP;
    }

    public void setApellidoP(String apellidoP) {
        this.apellidoP = apellidoP;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public long getTelefono() {
        return telefono;
    }

    public void setTelefono(long telefono) {
        this.telefono = telefono;
    }
}
