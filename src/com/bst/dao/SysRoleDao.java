package com.bst.dao;

import com.bst.pojo.Role;
import com.bst.pojo.SysUserEntity;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

public interface SysRoleDao {

    //查询所有角色
    List<Role> getRoles();

    /**
     *  修改角色信息
     * @param rid  角色id
     * @param rname  角色名称
     * @return
     */
    Boolean updateRole( Integer rid, String rname);

    /**
     *  删除角色记录
     * @param rid  要删角色的id
     * @return
     */
    Boolean deleteRole(Integer rid);

    //添加角色
    Boolean saveRole(Role role);

    List<SysUserEntity> getroleuser(Integer rid);

    Boolean updateUserRole(String [] uid);
}
