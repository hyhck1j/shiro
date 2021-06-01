package com.bjsxt.ssm.service;

import java.util.List;

import com.bjsxt.ssm.bean.TbUser;

public interface TbUserService {

	// List<Article> selectPaginatedArticle(int pageNum, int pageSize);

	void updateTbUser(TbUser username);

	void deleteTbUser(int userid);

	int saveTbUser(TbUser user);

	TbUser selectTbUser(int userid);

	int queryCount();

	List<TbUser> pagination(Integer pageSize, Integer page);

}
