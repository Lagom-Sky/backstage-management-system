package com.web.mapper;

import com.web.entity.po.StudentPO;
import com.web.entity.po.StudentPOExample;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface StudentPOMapper {
    int countByExample(StudentPOExample example);

    int deleteByExample(StudentPOExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(StudentPO record);

    int insertSelective(StudentPO record);

    List<StudentPO> selectByExample(StudentPOExample example);

    StudentPO selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") StudentPO record, @Param("example") StudentPOExample example);

    int updateByExample(@Param("record") StudentPO record, @Param("example") StudentPOExample example);

    int updateByPrimaryKeySelective(StudentPO record);

    int updateByPrimaryKey(StudentPO record);
}