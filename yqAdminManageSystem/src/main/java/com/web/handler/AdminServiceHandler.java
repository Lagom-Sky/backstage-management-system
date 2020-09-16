package com.web.handler;

import com.web.api.AdminService;
import com.web.api.StudentService;
import com.web.entity.po.AdminPO;
import com.web.entity.po.StudentPO;
import com.web.entity.vo.LoginVO;
import com.web.util.ConstantNumberUtil;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.io.OutputStream;
import java.util.List;

@Controller
public class AdminServiceHandler {

    Logger logger = LoggerFactory.getLogger(AdminServiceHandler.class);

    @Autowired
    AdminService adminService;

    @Autowired
    StudentService studentService;

    @RequestMapping("/login.html")
    public String  toLoginPage(){

        return "redirect:/login.jsp";
    }

    @RequestMapping("/do/login.html")
    public String doLogin(LoginVO loginVO, Model model,HttpSession session) {


        if (loginVO.getUserType().equals(ConstantNumberUtil.ADMIN_TYPE)) {

            List<AdminPO> adminPOS = adminService.selectAdminByUserNameAndPassword(loginVO.getUserName(), loginVO.getPassword());


            if (adminPOS == null || adminPOS.size() == 0) {

                model.addAttribute("message", "管理员的登录 ：用户名或者密码错误，或者你不属于该用户组");

                return "mainAdmin";

            } else {

                session.setAttribute("admin",adminPOS.get(0));


                return "mainAdmin";

            }
        }
        else {

            List<StudentPO> studentPOS = studentService.selectStudentByUserNameAndPassword(loginVO.getUserName(), loginVO.getPassword());

            if (studentPOS == null || studentPOS.size() == 0) {

                model.addAttribute("message", "用户登录 ：用户名或者密码错误，或者你不属于该用户组");

                return "mainAdmin";

            } else {
                return "mainAdmin";
            }
        }
    }

    @RequestMapping("/to/manage/admin/page.html")
    public String toManageAdminPage(HttpSession session) {

        List<AdminPO> adminPOS = adminService.selectAllAdmin();

        session.setAttribute("adminPOS", adminPOS);

        return "adminList";
    }
    @RequestMapping("/to/manage/student/page.html")

    public String toManageStudentPage(HttpSession session){

        List<StudentPO> studentPOS = studentService.selectAllStudent();

        session.setAttribute("studentPOS", studentPOS);

        return "studentList";
    }
    @RequestMapping("/to/check/selfInfo/page.html")

    public String toCheckSelfInfoPage(){

        return "adminInfo";
    }

    @RequestMapping("/delete/admin/page.html")
    public String deleteAdminById(Integer adminId,HttpSession session){

        try {

            adminService.deleteAdminById(adminId);

            return "redirect:/to/manage/admin/page.html";

        }catch (Exception e){

            session.setAttribute("message",e.getMessage());
            return "adminList";

        }
    }

    @RequestMapping("/delete/student/page.html")
    public String deleteStudentById(Integer studentId,HttpSession session){

        try {

            studentService.deleteStudentById(studentId);

            return "redirect:/to/manage/student/page.html";

        }catch (Exception e){

            session.setAttribute("message",e.getMessage());
            return "studentList";

        }
    }

    @RequestMapping("/to/Admin/Edit/{adminId}/page.html")
    public String toAdminEditPage(@PathVariable("adminId") Integer adminId,HttpSession session) {

        try {
            AdminPO adminPO = adminService.selectAdminById(adminId);

            session.setAttribute("adminInfo",adminPO);

            return "adminEdit";

        } catch (Exception e) {

            e.printStackTrace();

            session.setAttribute("message","sorry 跳转失败");

            return "adminList";
        }
    }

    @RequestMapping("/to/Student/Edit/{studentId}/page.html")
    public String toStudentEditPage(@PathVariable("studentId") Integer studentId,HttpSession session) {

        try {

            StudentPO studentPO = studentService.selectStudentById(studentId);

            session.setAttribute("studentInfo",studentPO);

            return "studentEdit";

        } catch (Exception e) {

            e.printStackTrace();

            session.setAttribute("message","sorry 跳转失败");

            return "studentList";
        }
    }

    @RequestMapping("/change/admin/info/page.html")
    public String changeAdminInfoById(AdminPO adminPO,HttpSession session){


        adminService.changeAdminInfo(adminPO);

        return "redirect:/to/manage/admin/page.html";
    }

    @RequestMapping("/change/student/info/page.html")
    public String changeStudentInfoById(StudentPO studentPO,HttpSession session){

        if(studentPO.getEnroldate() == null){

            StudentPO studentInfo = (StudentPO) session.getAttribute("studentInfo");

            studentPO.setEnroldate(studentInfo.getEnroldate()) ;
        }

        studentService.changeStudentInfo(studentPO);

        return "redirect:/to/manage/student/page.html";
    }

    @RequestMapping("/add/student/page.html")
    public String addStudent(StudentPO studentPO){

        studentService.addStudent(studentPO);


        return "redirect:/to/manage/student/page.html";
    }
    @RequestMapping("/add/admin/page.html" )
    public String addAdmin(AdminPO adminPO){

        adminService.addAdmin(adminPO);

        return "redirect:/to/manage/admin/page.html";

    }

    @RequestMapping("/searchForm/admin.html")
    public String searchAdmin(String adminName, HttpSession session){

        List<AdminPO> adminPOS = adminService.selectAdminLikeAdminName("%"+adminName+"%");

        session.setAttribute("adminPOS", adminPOS);

        return "adminList";
    }
    @RequestMapping("/searchForm/student.html")
    public String searchStudent(String sno, HttpSession session){

        List<StudentPO> studentPOS = studentService.selectStudentLikeSno("%"+sno+"%");


        session.setAttribute("studentPOS", studentPOS);

        return "studentList";
    }
}
