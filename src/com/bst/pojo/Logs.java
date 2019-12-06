package com.bst.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;
import java.util.Objects;

@Entity
public class Logs {
    private Integer id;
    private String method;
    private Integer userName;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Timestamp beginTime;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss",timezone="GMT+8")
    private Timestamp endTime;
    private String serviceModual;
    private Integer roleid;

    @Id
    @Column(name = "id", nullable = false)
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    @Basic
    @Column(name = "method", nullable = true, length = 255)
    public String getMethod() {
        return method;
    }

    public void setMethod(String method) {
        this.method = method;
    }

    @Basic
    @Column(name = "userName", nullable = true)
    public Integer getUserName() {
        return userName;
    }

    public void setUserName(Integer userName) {
        this.userName = userName;
    }

    @Basic
    @Column(name = "beginTime", nullable = true)
    public Timestamp getBeginTime() {
        return beginTime;
    }

    public void setBeginTime(Timestamp beginTime) {
        this.beginTime = beginTime;
    }

    @Basic
    @Column(name = "endTime", nullable = true)
    public Timestamp getEndTime() {
        return endTime;
    }

    public void setEndTime(Timestamp endTime) {
        this.endTime = endTime;
    }

    @Basic
    @Column(name = "serviceModual", nullable = true, length = 255)
    public String getServiceModual() {
        return serviceModual;
    }

    public void setServiceModual(String serviceModual) {
        this.serviceModual = serviceModual;
    }

    @Basic
    @Column(name = "roleid", nullable = true)
    public Integer getRoleid() {
        return roleid;
    }

    public void setRoleid(Integer roleid) {
        this.roleid = roleid;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Logs logs = (Logs) o;
        return Objects.equals(id, logs.id) &&
                Objects.equals(method, logs.method) &&
                Objects.equals(userName, logs.userName) &&
                Objects.equals(beginTime, logs.beginTime) &&
                Objects.equals(endTime, logs.endTime) &&
                Objects.equals(serviceModual, logs.serviceModual) &&
                Objects.equals(roleid, logs.roleid);
    }

    @Override
    public int hashCode() {
        return Objects.hash(id, method, userName, beginTime, endTime, serviceModual, roleid);
    }
}
