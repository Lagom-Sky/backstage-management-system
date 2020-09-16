package com.web.service;

import com.web.api.AdminService;
import com.web.entity.po.AdminPO;
import com.web.entity.po.AdminPOExample;
import com.web.mapper.AdminPOMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;


@Service
public class AdminServiceImpl implements AdminService {

    @Autowired
    AdminPOMapper adminPOMapper;

    @Override
    public List<AdminPO> selectAdminByUserNameAndPassword(String userName, String password) {

        AdminPOExample adminPOExample = new AdminPOExample();

        AdminPOExample.Criteria criteria = adminPOExample.createCriteria();

        criteria.andPasswordEqualTo(password);

        criteria.andUsernameEqualTo(userName);

        List<AdminPO> adminPOS = adminPOMapper.selectByExample(adminPOExample);

        return adminPOS;
    }

    @Override
    public List<AdminPO> selectAllAdmin() {

        List<AdminPO> adminPOS = adminPOMapper.selectByExample(new AdminPOExample());

        return adminPOS;
    }

    @Override
    public void deleteAdminById(Integer adminId) {

        adminPOMapper.deleteByPrimaryKey(adminId);

    }

    @Override
    public AdminPO selectAdminById(Integer adminId) {

        return adminPOMapper.selectByPrimaryKey(adminId);
    }

    @Override
    public void changeAdminInfo(AdminPO adminPO) {


        adminPOMapper.updateByPrimaryKeySelective(adminPO);

    }

    @Override
    public void addAdmin(AdminPO adminPO) {

        adminPOMapper.insertSelective(adminPO);

    }

    @Override
    public List<AdminPO> selectAdminLikeAdminName(String adminName) {

        AdminPOExample adminPOExample = new AdminPOExample();

        AdminPOExample.Criteria criteria = adminPOExample.createCriteria();

        criteria.andUsernameLike(adminName);

        List<AdminPO> adminPOS = adminPOMapper.selectByExample(adminPOExample);

        return adminPOS;
    }
}

