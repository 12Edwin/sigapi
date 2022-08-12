package com.jetbrians.sigapi.model;

public class BeanAuthentication {
    private  String userId;
    private String nickname;
    private String rol;

    public BeanAuthentication(){

    }

    public BeanAuthentication(String userId, String nickname, String rol) {
        this.userId = userId;
        this.nickname = nickname;
        this.rol = rol;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }
}
