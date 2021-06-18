package com.bjsxt.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjsxt.ssm.bean.TbRole;
import com.bjsxt.ssm.mapper.TbRoleMapper;
import com.bjsxt.ssm.service.TbRoleService;

@Service
public class TbRoleServiceImpl implements TbRoleService {
	
	@Autowired
	private TbRoleMapper tbRoleMapper;

	@Override
	public int saveTbRole(TbRole role) {
		this.tbRoleMapper.insertTbRole(role);
		return 0;
	}

	@Override
	public void deleteTbRole(int roleId) {
		this.tbRoleMapper.deleteTbRole(roleid);
	}

	@Override
	public int updateTbRole(TbRole tbRole) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public TbRole selectTbRole(int roleId) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int queryCount() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<TbRole> pagination(Integer pageSize, Integer page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int deleteTbRole(Integer[] roleIds) {
		// TODO Auto-generated method stub
		return 0;
	}

}
