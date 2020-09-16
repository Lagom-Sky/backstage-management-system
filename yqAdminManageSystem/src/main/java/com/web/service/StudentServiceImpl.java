package com.web.service;

import com.web.api.StudentService;
import com.web.entity.po.AdminPO;
import com.web.entity.po.StudentPO;
import com.web.entity.po.StudentPOExample;
import com.web.mapper.StudentPOMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    StudentPOMapper studentPOMapper;

    @Override
    public List<StudentPO> selectStudentByUserNameAndPassword(String userName, String password) {

        StudentPOExample studentPOExample = new StudentPOExample();

        StudentPOExample.Criteria criteria = studentPOExample.createCriteria();

        return null;
    }

    @Override
    public List<StudentPO> selectAllStudent() {

        List<StudentPO> studentPOS = studentPOMapper.selectByExample(new StudentPOExample());

        return studentPOS;
    }

    @Override
    public void deleteStudentById(Integer studentId) {

        studentPOMapper.deleteByPrimaryKey(studentId);

    }

    @Override
    public StudentPO selectStudentById(Integer studentId) {

        return studentPOMapper.selectByPrimaryKey(studentId);

    }

    @Override
    public void changeStudentInfo(StudentPO studentPO) {
        studentPOMapper.updateByPrimaryKey(studentPO);
    }

    @Override
    public void addStudent(StudentPO studentPO) {

        studentPOMapper.insertSelective(studentPO);

    }

    @Override
    public List<StudentPO> selectStudentLikeSno(String sno) {

        StudentPOExample studentPOExample = new StudentPOExample();

        StudentPOExample.Criteria criteria = studentPOExample.createCriteria();

        criteria.andSnoLike(sno);

        List<StudentPO> studentPOS = studentPOMapper.selectByExample(studentPOExample);

        return studentPOS;
    }
}
