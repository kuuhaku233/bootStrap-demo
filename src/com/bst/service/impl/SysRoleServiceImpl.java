package com.bst.service.impl;

import com.bst.dao.SysRoleDao;
import com.bst.pojo.Role;
import com.bst.pojo.SysUserEntity;
import com.bst.service.SysRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysRoleServiceImpl implements SysRoleService {
    @Autowired
    private SysRoleDao sysRoleDao;
    @Override
    public List<Role> getRoles() {
        return sysRoleDao.getRoles();
    }

    @Override
    public Boolean updateRole(Integer rid, String rname) {
        return sysRoleDao.updateRole(rid, rname);
    }

    @Override
    public Boolean deleteRole(Integer rid) {
        return sysRoleDao.deleteRole(rid);
    }

    @Override
    public Boolean saveRole(Role role) {
        return sysRoleDao.saveRole(role);
    }

    @Override
    public List<SysUserEntity> getroleuser(Integer rid) {
        return sysRoleDao.getroleuser(rid);
    }

    @Override
    public Boolean updateUserRole(String[] uid) {
        return sysRoleDao.updateUserRole(uid);
    }
}
