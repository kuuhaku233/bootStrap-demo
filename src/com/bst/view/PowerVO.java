package com.bst.view;

public class PowerVO {
    Integer reid;
    String relink;
    String resourcename;
    Integer powerreid;
    Integer reopjigouid;
    String rebianhao;

    public String getRebianhao() {
        return rebianhao;
    }

    public void setRebianhao(String rebianhao) {
        this.rebianhao = rebianhao;
    }

    public PowerVO() {
    }

    public PowerVO(Integer reid, String relink, String resourcename, Integer powerreid, Integer reopjigouid,String rebianhao) {
        this.reid = reid;
        this.relink = relink;
        this.resourcename = resourcename;
        this.powerreid = powerreid;
        this.reopjigouid = reopjigouid;
        this.rebianhao=rebianhao;
    }

    public Integer getReid() {
        return reid;
    }

    public void setReid(Integer reid) {
        this.reid = reid;
    }

    public String getRelink() {
        return relink;
    }

    public void setRelink(String relink) {
        this.relink = relink;
    }

    public String getResourcename() {
        return resourcename;
    }

    public void setResourcename(String resourcename) {
        this.resourcename = resourcename;
    }

    public Integer getPowerreid() {
        return powerreid;
    }

    public void setPowerreid(Integer powerreid) {
        this.powerreid = powerreid;
    }

    public Integer getReopjigouid() {
        return reopjigouid;
    }

    public void setReopjigouid(Integer reopjigouid) {
        this.reopjigouid = reopjigouid;
    }
}
