package com.bst.service;

import com.bst.pojo.Resource;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

public interface SysResourceService {
    List<Resource> getresource(String offset, String limit);

    //删除资源记录
    public boolean deleteResourceById(String reid);

    //修改资源信息
    public boolean updateResourceMess(Resource resource);

    public Resource updateTest(Resource resource);

    //添加资源 下拉列表的级联
    public List<Resource> getSelectVal(Integer rejigouid);
}
