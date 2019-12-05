package com.bst.realm;

import com.bst.pojo.Resource;
import com.bst.pojo.SysUserEntity;
import com.bst.service.LoginService;
import com.bst.service.SysResourceService;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.AuthenticationInfo;
import org.apache.shiro.authc.AuthenticationToken;
import org.apache.shiro.authc.SimpleAuthenticationInfo;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class JdbcRealm extends AuthorizingRealm {

    @Autowired
    private LoginService ls;
    @Autowired
    private SysResourceService sysResourceService;

    //可以注入进来密码进行验证，这样进行判断是用户名错了，还是密码错了

    @Override
    public String getName() {
        return "JdbcRealm";
    }

    @Override
    //用于授权
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        //获取身份信息
        SysUserEntity su= (SysUserEntity) principalCollection.getPrimaryPrincipal();
        //数据库查询权限信息
        List<Resource> listres=sysResourceService.getRoleLinkByRoleId(su.getRoleid());
        if(listres==null){
            return null;
        }else{
            //设置资源的集合
            Set<String> resource = new HashSet<>();
            for(Resource sr:listres){
                resource.add(sr.getRelink());
            }

            //将权限信息保存到AuthorizationInfo中
            SimpleAuthorizationInfo simpleAuthorizationInfo = new SimpleAuthorizationInfo();
            simpleAuthorizationInfo.addStringPermissions(resource);
            return simpleAuthorizationInfo;
        }

    }

    @Override
    //用于认证
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken token) throws AuthenticationException {
        //获取用户名
        String username=(String)token.getPrincipal();
        //获取密码
        String password =new String((char[])token.getCredentials());
        SysUserEntity su= new SysUserEntity();
        su.setUsername(username);
        su.setPassword(password);

        //根据身份信息获取认证信息
        SysUserEntity surealy=ls.getLogin(su);

        if(surealy==null){

            //返回空置表示验证不通过
            return null;
        }
        //返回认证信息
        SimpleAuthenticationInfo simpleAuthenticationInfo = new SimpleAuthenticationInfo(surealy,surealy.getPassword(),getName());

        return simpleAuthenticationInfo;
    }
}
