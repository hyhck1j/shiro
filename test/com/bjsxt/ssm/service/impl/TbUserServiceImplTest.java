package com.bjsxt.ssm.service.impl;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.bjsxt.ssm.bean.TbUser;
import com.bjsxt.ssm.service.TbUserService;


public class TbUserServiceImplTest {

	private ApplicationContext ctx = new ClassPathXmlApplicationContext(
			"applicationContext-*.xml");

	private TbUserService service;

	@Before
	public void before() {
		service = (TbUserService) ctx.getBean("tbUserServiceImpl");
	}

	@Test
	public void testsaveTbUser() {
		
		TbUser user = new TbUser();
		user.setUserId(2);
		user.setUserName("eee");
		user.setUserPwd("123");

		int id = service.saveTbUser(user);
		System.out.println("新文章的id为：" + id);
	}

//	@Test
//	public void testGetselectPaginatedCategory() {
//
//		List<CateGory> categories = service.selectPaginatedCateGory(1, 3);
//
//		for (CateGory cateGory : categories) {
//			System.out.println(cateGory.toString());
//		}
//
//	}
//	
	@Test
	public void testdeleteTbUser(){
		int userid =3;
		
		service.deleteTbUser(userid);
				
		System.out.println("本次访问数据库影响了第 " + userid + " 行数据");
	}
	
	@Test
	public void testselectTbUser(){
		int userid =2;
		
		TbUser userid1 = service.selectTbUser(userid);
				
		System.out.println("本次查询了第 " + userid1.toString() + " 行数据");
		
	
	}
	
	@Test
	public void testupdateTbUser(){
		
		
		TbUser user=new TbUser();
		user.setUserId(2);
		user.setUserName("gail");
		user.setUserPwd("zheshiyijigail");
	
		service.updateTbUser(user);
		System.out.println("本次修改了第" + user.toString() + " 行数据");
		
	
	}
}
