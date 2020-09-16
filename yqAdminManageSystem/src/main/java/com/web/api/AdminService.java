package com.web.api;

import com.web.entity.po.AdminPO;

import java.util.List;

public interface AdminService {

    List<AdminPO> selectAdminByUserNameAndPassword(String userName,String password);


    List<AdminPO> selectAllAdmin();

    void deleteAdminById(Integer adminId);

    AdminPO selectAdminById(Integer adminId);

    void changeAdminInfo(AdminPO adminPO);

    void addAdmin(AdminPO adminPO);

    List<AdminPO> selectAdminLikeAdminName(String adminName);
}
