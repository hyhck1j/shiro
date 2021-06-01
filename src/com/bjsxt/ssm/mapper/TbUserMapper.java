package com.bjsxt.ssm.mapper;

import java.util.List;
import java.util.Map;

import com.bjsxt.ssm.bean.TbUser;

public interface TbUserMapper {

	void insertTbUser(TbUser user);

	TbUser selectTbUser(TbUser user);

	void deleteTbUser(int userid);

	void updateTbUser(TbUser username);

	TbUser selectTbUser(int userid);

	List<TbUser> selectTbUserByUserName(String userName);

	int queryTbUserCount();

	List<TbUser> pagination(Map<String, Integer> query);
}
