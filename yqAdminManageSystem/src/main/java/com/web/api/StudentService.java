package com.web.api;

import com.web.entity.po.AdminPO;
import com.web.entity.po.StudentPO;

import java.util.List;

public interface StudentService {
    List<StudentPO> selectStudentByUserNameAndPassword(String userName, String password);

    List<StudentPO> selectAllStudent();

    void deleteStudentById(Integer studentId);

    StudentPO selectStudentById(Integer studentId);

    void changeStudentInfo(StudentPO studentPO);

    void addStudent(StudentPO studentPO);

    List<StudentPO> selectStudentLikeSno(String sno);
}
