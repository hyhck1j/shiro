package com.bjsxt.ssm.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bjsxt.ssm.bean.TbUser;
import com.bjsxt.ssm.mapper.TbUserMapper;
import com.bjsxt.ssm.service.TbUserService;


@Service
public class TbUserServiceImpl implements TbUserService {

	@Autowired
	private TbUserMapper tbUserMapper;

	@Override
	public void updateTbUser(TbUser username) {
		this.tbUserMapper.updateTbUser(username);
	}

	@Override
	public void deleteTbUser(int userid) {
		this.tbUserMapper.deleteTbUser(userid);
	}

	@Override
	@Transactional(isolation=Isolation.DEFAULT, propagation=Propagation.REQUIRED)
	public int saveTbUser(TbUser user) {
		this.tbUserMapper.insertTbUser(user);
		return user.getUserId();
	}

	@Override
	public TbUser selectTbUser(int userid) {
		
		return tbUserMapper.selectTbUser(userid);
	}
	
//	@Override
//	@Transactional(isolation=Isolation.DEFAULT, propagation=Propagation.REQUIRED)
////	public int saveTbUser(TbUser userid) {
////		this.tbUserMapper.insertTbUser(userid);
////		return userid.getUserId();
////	}
//	
///**
// * 分页
// * pageNum当前第几页
// * pagesize每页多少条
// * ((pageNum - 1) * pageSize); (当前页面-1)  乘   每页条数
// * 
// */
//	@Override
//	@Transactional(isolation=Isolation.DEFAULT, propagation=Propagation.REQUIRED, readOnly=true, rollbackFor=Exception.class)
//	public List<Article> selectPaginatedArticle(int pageNum, int pageSize) {
//		Map<String, Integer> articeMap = new HashMap<>();
//		articeMap.put("minNum", (pageNum - 1) * pageSize);
//		articeMap.put("size", pageSize);
//		return this.articleMapper.selectPaginatedArticle(articeMap);
//	}
//
//
//	@Override
//	public void updateArticle(Article articleTitle) {
//		this.articleMapper.updateArticle(articleTitle);
//		
//	}
//
//
//	@Override
//	public void deleteArticle(long article) {
//		this.articleMapper.deleteArticle(article);
//		
//	}
//	
//	public Article selectArticle(long article) {
//		return articleMapper.selectArticle(article);
//		
//	}
//
//	@Override
//	public int selectArticleCount() {
//		// TODO Auto-generated method stub
//		  return articleMapper.selectArticleCount();
//	}
//
//	@Override
//	public void updateTbUser(TbUser username) {
//		// TODO Auto-generated method stub
//		
//	}
//
//	@Override
//	public void deleteTbUser(int userid) {
//		// TODO Auto-generated method stub
//		
//	}
//
//	@Override
//	public int saveTbUser(TbUser user) {
//		// TODO Auto-generated method stub
//		return 0;
//	}
//
//	@Override
//	public TbUser selectTbUser(int userid) {
//		// TODO Auto-generated method stub
//		return null;
//	}
//


}
