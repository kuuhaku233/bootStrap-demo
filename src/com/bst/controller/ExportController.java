package com.bst.controller;

import com.bst.pojo.SysUserEntity;
import com.bst.service.SysUserService;
import com.bst.util.ExcelUtil;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

@Controller
@RequestMapping("/export/")
public class ExportController {
    @Autowired
    private SysUserService sysUserService;
    @RequestMapping("excelchukusc")
    public  void excelChuKu(@RequestParam(value="idList",required=false)String idList,
                            HttpServletRequest request, HttpServletResponse response){
        final String[] RECORES_COLUMNS = new String[]{
                "用户名",
                "密码",
                "邮箱",
                "手机号",
                "注册地址",
                "注册时间",
                "登陆时间",
                "格言",
        };
        /*the column will display on xls files. must the same as the entity fields.对应上面的字段.*/
        final String[] RECORES_FIELDS = new String[]{
                "username",
                "password",
                "email",
                "phone",
                "register_address",
                "register_time",
                "login_time",
                "signed",
        };
        List<SysUserEntity> chukuguanliEntity=null;
        if(idList!=null&&!idList.equals("")){
            chukuguanliEntity=sysUserService.getUserInfo(idList);
        }


        HSSFWorkbook workbook = new HSSFWorkbook();
        ExcelUtil<SysUserEntity> userSheet = new ExcelUtil<SysUserEntity>();

        String excelName="人员表.xls";
        try {
            userSheet.creatAuditSheet(workbook, "人员信息",
                    chukuguanliEntity, RECORES_COLUMNS, RECORES_FIELDS);
            this.setResponseHeader(response, excelName);
            OutputStream os = response.getOutputStream();
            workbook.write(os);
            os.flush();
            os.close();

        } catch (NoSuchMethodException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IllegalAccessException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IllegalArgumentException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (FileNotFoundException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
    //发送响应流方法
    public void setResponseHeader(HttpServletResponse response, String fileName) {

        try {
            try {
                fileName = new String(fileName.getBytes(),"ISO8859-1");
            } catch (UnsupportedEncodingException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            response.setContentType("application/force-download");// 设置强制下载不打开
            //response.setContentType("application/octet-stream;charset=ISO8859-1");
            response.setHeader("Content-Disposition", "attachment;filename="+ fileName);
            response.addHeader("Pargam", "no-cache");
            response.addHeader("Cache-Control", "no-cache");
        } catch (Exception ex) {
            ex.printStackTrace();
        }
    }
}
