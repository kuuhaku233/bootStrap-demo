package com.bst.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;

import javax.annotation.Generated;
import javax.persistence.*;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
@Table(name = "users")
public class SysUserEntity {
    private Integer uid;
    private String username;
    private String password;
    private String email;
    private String phone;
    private String register_address;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Timestamp register_time;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Timestamp login_time;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Timestamp last_login_time;
    private String login_count;
    private String signed;
    private Integer roleid;
    private Integer organizeid;
    private Integer opid;

    public void setUid(int uid) {
        this.uid = uid;
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "uid")
    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    @Basic
    @Column(name = "username")
    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    @Basic
    @Column(name = "password")
    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    @Basic
    @Column(name = "email")
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Basic
    @Column(name = "phone")
    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }



    @Basic
    @Column(name = "registerAddress")
    public String getRegister_address() {
        return register_address;
    }

    public void setRegister_address(String register_address) {
        this.register_address = register_address;
    }

    @Basic
    @Column(name = "registerTime")
    public Timestamp getRegister_time() {
        return register_time;
    }

    public void setRegister_time(Timestamp register_time) {
        this.register_time = register_time;
    }

    @Basic
    @Column(name = "loginTime")
    public Timestamp getLogin_time() {
        return login_time;
    }

    public void setLogin_time(Timestamp login_time) {
        this.login_time = login_time;
    }

    @Basic
    @Column(name = "lastLoginTime")
    public Timestamp getLast_login_time() {
        return last_login_time;
    }

    public void setLast_login_time(Timestamp last_login_time) {
        this.last_login_time = last_login_time;
    }

    @Basic
    @Column(name = "loginCount")
    public String getLogin_count() {
        return login_count;
    }

    public void setLogin_count(String login_count) {
        this.login_count = login_count;
    }

    @Basic
    @Column(name = "signed")
    public String getSigned() {
        return signed;
    }

    public void setSigned(String signed) {
        this.signed = signed;
    }

    @Basic
    @Column(name = "roleid")
    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    @Basic
    @Column(name = "organizeid")
    public Integer getOrganizeid() {
        return organizeid;
    }

    public void setOrganizeid(Integer organizeid) {
        this.organizeid = organizeid;
    }

    @Basic
    @Column(name = "opid")
    public Integer getOpid() {
        return opid;
    }

    public void setOpid(Integer opid) {
        this.opid = opid;
    }

    public SysUserEntity() {
    }

    public SysUserEntity(Integer uid, String username, String password, String email, String phone, String register_address, Timestamp register_time, Timestamp login_time, Timestamp last_login_time, String login_count, String signed, Integer roleid, Integer organizeid, Integer opid) {
        this.uid = uid;
        this.username = username;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.register_address = register_address;
        this.register_time = register_time;
        this.login_time = login_time;
        this.last_login_time = last_login_time;
        this.login_count = login_count;
        this.signed = signed;
        this.roleid = roleid;
        this.organizeid = organizeid;
        this.opid = opid;
    }
}
