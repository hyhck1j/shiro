package com.bjsxt.ssm.service;

import com.bjsxt.ssm.bean.TbUser;

public interface TbUserService {

//	List<Article> selectPaginatedArticle(int pageNum, int pageSize);
	
	void updateTbUser(TbUser username);
	
	void deleteTbUser(int userid);

	int  saveTbUser(TbUser user);

	TbUser selectTbUser(int userid);

//	int selectArticleCount();

	

	



	
}
