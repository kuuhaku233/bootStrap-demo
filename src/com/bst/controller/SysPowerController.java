package com.bst.controller;

import com.bst.dao.SysResourceDao;
import com.bst.pojo.Resource;
import com.bst.service.SysPowerService;
import com.bst.service.SysResourceService;
import com.bst.view.PowerVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/system/")
public class SysPowerController {
    @Autowired
    private SysPowerService sysPowerService;


    //获取选中角色锁具有的资源
    @RequestMapping("getpwoerresource")
    @ResponseBody
    public List<PowerVO> getPowerResource(Integer rid)
    {
       return sysPowerService.getPowerResource(rid);
    }

    /**
     *   修改用户所拥有的资源
     * @param rid  用户id
     * @return t/f
     */
    @RequestMapping("updaterolepower")
    @ResponseBody
    public Boolean updateRolePower(@RequestParam(value = "rid", required=false,defaultValue = "1") Integer rid,
                                    HttpServletRequest request)

    {
//        String rid1 = request.getParameter("rid");
        String reids1 = request.getParameter("reids");
        String[] arr = reids1.split(",");
        return sysPowerService.updateRolePower(rid, arr);
    }

}
