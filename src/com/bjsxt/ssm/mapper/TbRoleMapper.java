package com.bjsxt.ssm.mapper;

import java.util.List;
import java.util.Map;

import com.bjsxt.ssm.bean.TbRole;

public interface TbRoleMapper {

	void insertTbRole(TbRole role);
	
	void deleteTbRole(int roleid);
	
	void updateTbRole(TbRole rolename);
	
	List<TbRole> selectTbRoleByRoleName(String RoleName);
	
	int queryTbRoleCount();
	
	List<TbRole> pagination(Map<String, Integer> query);

	TbRole selectTbRole(int RoleId);
	
}
