package com.bst.service;

import com.bst.pojo.Role;
import com.bst.pojo.SysUserEntity;

import java.util.List;

public interface SysRoleService {

    List<Role> getRoles();

    Boolean updateRole( Integer rid, String rname);

    Boolean deleteRole(Integer rid);

    Boolean saveRole(Role role);

    List<SysUserEntity> getroleuser(Integer rid);

    Boolean updateUserRole(String [] uid);
}
