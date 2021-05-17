package com.bjsxt.ssm.mapper;

import com.bjsxt.ssm.bean.TbRole;

public interface TbRoleMapper {

	void insertTbRole(TbRole role);
	
	TbRole selectTbRole(TbRole role);
	
	void deleteTbRole(int roleid);
	
	void updateTbRole(TbRole rolename);
	
}
