package com.bst.pojo;

import javax.persistence.*;

@Entity
public class Resource {
    private Integer reid;
    private String resourcename;
    private String relink;
    private String rebianhao;
    private Integer rejigouid;
    private Integer reopjigouid;

    @Override
    public String toString() {
        return "Resource{" +
                "reid=" + reid +
                ", resourcename='" + resourcename + '\'' +
                ", relink='" + relink + '\'' +
                ", rebianhao='" + rebianhao + '\'' +
                ", rejigouid=" + rejigouid +
                ", reopjigouid=" + reopjigouid +
                '}';
    }

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "reid", nullable = false)
    public Integer getReid() {
        return reid;
    }

    public void setReid(Integer reid) {
        this.reid = reid;
    }

    @Basic
    @Column(name = "resourcename", nullable = true, length = 255)
    public String getResourcename() {
        return resourcename;
    }

    public void setResourcename(String resourcename) {
        this.resourcename = resourcename;
    }

    @Basic
    @Column(name = "relink", nullable = true, length = 255)
    public String getRelink() {
        return relink;
    }

    public void setRelink(String relink) {
        this.relink = relink;
    }

    @Basic
    @Column(name = "rebianhao", nullable = true, length = 255)
    public String getRebianhao() {
        return rebianhao;
    }

    public void setRebianhao(String rebianhao) {
        this.rebianhao = rebianhao;
    }

    @Basic
    @Column(name = "rejigouid", nullable = true)
    public Integer getRejigouid() {
        return rejigouid;
    }

    public void setRejigouid(Integer rejigouid) {
        this.rejigouid = rejigouid;
    }

    @Basic
    @Column(name = "reopjigouid", nullable = true)
    public Integer getReopjigouid() {
        return reopjigouid;
    }

    public void setReopjigouid(Integer reopjigouid) {
        this.reopjigouid = reopjigouid;
    }

    public Resource(Integer reid, String resourcename, String relink, String rebianhao, Integer rejigouid, Integer reopjigouid) {
        this.reid = reid;
        this.resourcename = resourcename;
        this.relink = relink;
        this.rebianhao = rebianhao;
        this.rejigouid = rejigouid;
        this.reopjigouid = reopjigouid;
    }

    public Resource() {

    }
}
