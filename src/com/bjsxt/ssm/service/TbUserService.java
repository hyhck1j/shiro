package com.bjsxt.ssm.service;

import java.util.List;

import com.bjsxt.ssm.bean.TbUser;

public interface TbUserService {

	int updateTbUser(TbUser tbUser);

	void deleteTbUser(int userid);

	int saveTbUser(TbUser user);

	TbUser selectTbUser(int userid);

	int queryCount();

	List<TbUser> pagination(Integer pageSize, Integer page);

	int deleteTbUsers(Integer[] userIds);

}
