package com.jetbrians.sigapi.model.admin;

public class BeanRequest {
    int id;
    int idDispositivo;
    String idUsuario;
    String estado;
    String nom_dispositivo;
    String nom_usuario;
    int restantes;
    String categoria;
    String descripcion;
    String fechaSolicitada;
    String fechaEntrega;
    String apellidoPaterno;
    String apellidoMaterno;
    String correo;
    long telefono;
    int cp;
    String colonia;
    int idClasificacion;
    int unidadesDisponibles;
    int idDivision;
    int numero;
    String calle;
    String municipio;
    String estadoLugar;



    public BeanRequest() {
    }

    public BeanRequest(String calle, int idDivision, int numero, String municipio, String estadoLugar, String colonia, String fechaSolicitada, String fechaEntrega, String apellidoMaterno, String apellidoPaterno, String correo,long telefono, int cp,int idClasificacion, int unidadesDisponibles, int id, String idUsuario, int idDispositivo, String estado, String nom_dispositivo, String nom_usuario, int restantes, String categoria, String descripcion) {
        this.id = id;
        this.idDivision= idDivision;
        this.numero= numero;
        this.calle= calle;
        this.municipio= municipio;
        this.estadoLugar= estadoLugar;
        this.estado = estado;
        this.nom_dispositivo = nom_dispositivo;
        this.nom_usuario = nom_usuario;
        this.restantes = restantes;
        this.categoria= categoria;
        this.descripcion= descripcion;
        this.idDispositivo=idDispositivo;
        this.idUsuario=idUsuario;
        this.fechaEntrega=fechaEntrega;
        this.fechaSolicitada=fechaSolicitada;
        this.apellidoMaterno=apellidoMaterno;
        this.apellidoPaterno=apellidoPaterno;
        this.correo=correo;
        this.colonia=colonia;
        this.idClasificacion= idClasificacion;
        this.unidadesDisponibles=unidadesDisponibles;
    }

    public int getIdDivision() {
        return idDivision;
    }

    public void setIdDivision(int idDivision) {
        this.idDivision = idDivision;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public String getCalle() {
        return calle;
    }

    public void setCalle(String calle) {
        this.calle = calle;
    }

    public String getMunicipio() {
        return municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    public String getEstadoLugar() {
        return estadoLugar;
    }

    public void setEstadoLugar(String estadoLugar) {
        this.estadoLugar = estadoLugar;
    }

    public String getFechaSolicitada() {
        return fechaSolicitada;
    }

    public void setFechaSolicitada(String fechaSolicitada) {
        this.fechaSolicitada = fechaSolicitada;
    }

    public String getFechaEntrega() {
        return fechaEntrega;
    }

    public void setFechaEntrega(String fechaEntrega) {
        this.fechaEntrega = fechaEntrega;
    }

    public String getApellidoPaterno() {
        return apellidoPaterno;
    }

    public void setApellidoPaterno(String apellidoPaterno) {
        this.apellidoPaterno = apellidoPaterno;
    }

    public String getApellidoMaterno() {
        return apellidoMaterno;
    }

    public void setApellidoMaterno(String apellidoMaterno) {
        this.apellidoMaterno = apellidoMaterno;
    }

    public String getCorreo() {
        return correo;
    }

    public void setCorreo(String correo) {
        this.correo = correo;
    }

    public long getTelefono() {
        return telefono;
    }

    public void setTelefono(long telefono) {
        this.telefono = telefono;
    }

    public int getCp() {
        return cp;
    }

    public void setCp(int cp) {
        this.cp = cp;
    }

    public String getColonia() {
        return colonia;
    }

    public void setColonia(String colonia) {
        this.colonia = colonia;
    }

    public int getIdClasificacion() {
        return idClasificacion;
    }

    public void setIdClasificacion(int idClasificacion) {
        this.idClasificacion = idClasificacion;
    }

    public int getUnidadesDisponibles() {
        return unidadesDisponibles;
    }

    public void setUnidadesDisponibles(int unidadesDisponibles) {
        this.unidadesDisponibles = unidadesDisponibles;
    }

    public int getIdDispositivo() {
        return idDispositivo;
    }

    public void setIdDispositivo(int idDispositivo) {
        this.idDispositivo = idDispositivo;
    }

    public String getIdUsuario() {
        return idUsuario;
    }

    public void setIdUsuario(String idUsuario) {
        this.idUsuario = idUsuario;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getNom_dispositivo() {
        return nom_dispositivo;
    }

    public void setNom_dispositivo(String nom_dispositivo) {
        this.nom_dispositivo = nom_dispositivo;
    }

    public String getNom_usuario() {
        return nom_usuario;
    }

    public void setNom_usuario(String nom_usuario) {
        this.nom_usuario = nom_usuario;
    }

    public int getRestantes() {
        return restantes;
    }

    public void setRestantes(int restantes) {
        this.restantes = restantes;
    }
}
