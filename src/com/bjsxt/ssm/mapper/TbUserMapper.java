package com.bjsxt.ssm.mapper;

import com.bjsxt.ssm.bean.TbUser;

public interface TbUserMapper {

	void insertTbUser(TbUser user);
	
	TbUser selectTbUser(TbUser user);
	
	void deleteTbUser(int userid);
	
	void updateTbUser(TbUser username);

	TbUser selectTbUser(int userid);
	
}
