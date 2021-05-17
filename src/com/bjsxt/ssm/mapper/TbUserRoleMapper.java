package com.bjsxt.ssm.mapper;

import com.bjsxt.ssm.bean.TbUserRole;


public interface TbUserRoleMapper {

	void insertTbUserRole(TbUserRole userrole);
	
	TbUserRole selectTbUserRole(TbUserRole userrole);
	
	void deleteTbUserRole(int urid);
	
	void updateTbUserRole(TbUserRole rolename);
	
}
