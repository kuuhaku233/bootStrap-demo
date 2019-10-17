package com.bst.pojo;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import java.sql.Timestamp;
import java.util.Date;
import java.util.Objects;

@Entity
public class User {
    private Integer userId;
    private Date lastLongTime;
    private Integer status;
    private String userName;
    private String userPwd;

    @Id
    @Column(name = "userId", nullable = false)
    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    @Basic
    @Column(name = "lastLongTime", nullable = true)
    public Date getLastLongTime() {
        return lastLongTime;
    }

    public void setLastLongTime(Date lastLongTime) {
        this.lastLongTime = lastLongTime;
    }

    @Basic
    @Column(name = "status", nullable = false)
    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Basic
    @Column(name = "userName", nullable = true, length = 255)
    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    @Basic
    @Column(name = "userPwd", nullable = true, length = 255)
    public String getUserPwd() {
        return userPwd;
    }

    public void setUserPwd(String userPwd) {
        this.userPwd = userPwd;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(userId, user.userId) &&
                Objects.equals(lastLongTime, user.lastLongTime) &&
                Objects.equals(status, user.status) &&
                Objects.equals(userName, user.userName) &&
                Objects.equals(userPwd, user.userPwd);
    }

    @Override
    public int hashCode() {

        return Objects.hash(userId, lastLongTime, status, userName, userPwd);
    }
}
