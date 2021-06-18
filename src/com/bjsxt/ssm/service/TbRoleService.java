package com.bjsxt.ssm.service;

import java.util.List;

import com.bjsxt.ssm.bean.TbRole;

public interface TbRoleService {

	int saveTbRole(TbRole role); 
	
	void deleteTbRole(int roleId);
	
	int updateTbRole(TbRole tbRole);
	
	TbRole selectTbRole(int roleId);

	int queryCount();

	List<TbRole> pagination(Integer pageSize, Integer page);

	int deleteTbRole(Integer[] roleIds);
}
