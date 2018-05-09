package com.springmvc.controller;

import com.springmvc.pojo.Admin;
import com.springmvc.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@Controller
public class main {

    @Autowired
    private AdminService adminService;

    /**
     * 获取所有信息
     * @param request
     * @param model
     * @return
     */
    @RequestMapping("/getAllUser")
    public String getAllUser(HttpServletRequest request, Model model){
        List<Admin> admin=adminService.findAll();
        System.out.println(admin);
        model.addAttribute("list",admin);
        request.setAttribute("list",admin);
        return "allUser";
    }

    /**
     * 添加信息
     * @param admin
     * @param model
     * @return
     */
    @RequestMapping("/addUser")
    public String addUser(Admin admin, Model model){
        adminService.save(admin);
        return "redirect:getAllUser";
    }

    /**
     * 修改信息
     * @param admin
     * @param request
     * @param model
     * @return
     */
    @RequestMapping("/updateUser")
    public String updateUser(Admin admin,HttpServletRequest request,Model model){
        if(adminService.update(admin)){
            admin=adminService.findById(admin.getId());
            request.setAttribute("admin",admin);
            model.addAttribute("admin",admin);
            return "redirect:getAllUser";
        }else{
            return "error";
        }
    }

    /**
     * 根据id查询
     * @param id
     * @param request
     * @param model
     * @return
     */
    @RequestMapping("/getUser")
    public String getUser(int id,HttpServletRequest request,Model model){
        request.setAttribute("admin",adminService.findById(id));
        model.addAttribute("admin",adminService.findById(id));
        return "editUser";
    }

    /**
     * 删除用户
     * @param id
     */
    @RequestMapping("/delUser")
    public String delUser(int id){
        adminService.delete(id);
        return "redirect:getAllUser";
    }

    /**
     * 注册账号
     * @param admin
     * @param model
     * @return
     */
    @RequestMapping("/register")
    public String register(Admin admin, Model model){
        adminService.save(admin);
        return "login";
    }

    /**
     * 登录账号
     * @return
     */
    @RequestMapping("/login")
    public String login(Admin admin,Model model){
        Admin ad=adminService.login(admin);
        if(ad!=null){
            return "redirect:getAllUser";
        }else{
            return "error";
        }
    }

}
