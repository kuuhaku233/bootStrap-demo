package com.bst.pojo;

import javax.persistence.*;

@Entity
public class Role {
    private Integer rid;
    private String rname;
    private String rbianma;
    private Integer oid;
    private String ruser;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "rid", nullable = false)
    public Integer getRid() {
        return rid;
    }

    public void setRid(Integer id) {
        this.rid = id;
    }

    @Basic
    @Column(name = "rname", nullable = false, length = 255)
    public String getRname() {
        return rname;
    }

    public void setRname(String rname) {
        this.rname = rname;
    }

    @Basic
    @Column(name = "rbianma", nullable = false, length = 255)
    public String getRbianma() {
        return rbianma;
    }

    public void setRbianma(String rbainma) {
        this.rbianma = rbainma;
    }

    @Basic
    @Column(name = "oid", nullable = true)
    public Integer getOid() {
        return oid;
    }

    public void setOid(Integer oid) {
        this.oid = oid;
    }

    @Basic
    @Column(name = "ruser", nullable = true, length = 255)
    public String getRuser() {
        return ruser;
    }

    public void setRuser(String ruser) {
        this.ruser = ruser;
    }

    public Role() {
    }

    public Role(Integer id, String rname, String rbianma, Integer oid, String ruser) {

        this.rid = id;
        this.rname = rname;
        this.rbianma = rbianma;
        this.oid = oid;
        this.ruser = ruser;
    }

    @Override
    public String toString() {
        return "Role{" +
                "id=" + rid +
                ", rname='" + rname + '\'' +
                ", rbainma='" + rbianma + '\'' +
                ", oid=" + oid +
                ", ruser='" + ruser + '\'' +
                '}';
    }
}
