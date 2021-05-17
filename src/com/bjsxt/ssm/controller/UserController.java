package com.bjsxt.ssm.controller;

import java.util.HashMap;
import java.util.Map;

import org.apache.catalina.User;
import org.fusesource.mqtt.codec.PUBLISH;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bjsxt.ssm.Constant;
import com.bjsxt.ssm.bean.TbUser;
import com.bjsxt.ssm.service.TbUserService;
import com.bjsxt.ssm.view.Rst;

@Controller
@RequestMapping("/admin/user")
public class UserController {

	@Autowired
	private TbUserService tbuserservice;

	/** 跳转到列表页面 */
	@RequestMapping("/list.do")
	public String list() {
		return "user/list";
	}

	/** 跳转到新增页面 */
	@RequestMapping("/add.do")
	public String add() {
		return "user/add";
	}

	/** 跳转到修改页面 */
	@RequestMapping("/edit.do")
	public String edit() {
		return "user/edit";
	}

	@RequestMapping("/save")
	@ResponseBody
	public Rst save(User user) {
		Rst rst = new Rst();

		if(null == user){
			rst.setCode(Constant.ERROR);
			rst.setMessage("用户信息不能为空");
		}
		
		return rst;
	}
}
