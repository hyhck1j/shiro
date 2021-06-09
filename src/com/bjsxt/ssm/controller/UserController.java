package com.bjsxt.ssm.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.ArrayUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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
	public String list(ModelMap view) {

		int totalNumber = tbuserservice.queryCount();
		view.addAttribute("totalNumber", totalNumber);

		return "user/list";
	}

	/** 跳转到新增页面 */
	@RequestMapping("/add.do")
	public String add() {
		return "user/add";
	}

	/** 跳转到修改页面 */
	@RequestMapping("/edit/{userId}.do")
	public String edit(@PathVariable Integer userId, ModelMap view) {

		TbUser tbUser = tbuserservice.selectTbUser(userId);
		view.addAttribute("tbUser", tbUser);
		return "user/edit";
	}

	@RequestMapping("/save.do")
	@ResponseBody
	public Rst save(TbUser user) {
		Rst rst = new Rst();

		if (null == user) {
			rst.setCode(Constant.ERROR);
			rst.setMessage("用户信息不能为空");
			return rst;
		}

		int userId = tbuserservice.saveTbUser(user);
		if (0 < userId) {
			rst.setCode(Constant.SUCCESS);
			rst.setMessage("新增成功");
		} else {
			rst.setCode(Constant.ERROR);
			rst.setMessage("新增失败");
		}
		return rst;
	}

	/**
	 * 
	 * @param pageSize
	 *            每页数据个数
	 * @param page
	 *            页码
	 * @return
	 */
	@RequestMapping("/pagination.do")
	@ResponseBody
	public Rst pagination(Integer pageSize,
			@RequestParam(value = "pageNumber") Integer page) {
		Rst rst = new Rst();

		if (0 >= pageSize || 0 >= page) {
			rst.setCode(Constant.ERROR);
			rst.setMessage("参数错误");
			return rst;
		}

		List<TbUser> list = tbuserservice.pagination(pageSize, page);

		rst.setCode(Constant.SUCCESS);
		rst.setMessage("获取成功");
		if (CollectionUtils.isNotEmpty(list)) {
			rst.setData(list);
		} else {
			rst.setData(new ArrayList<>());
		}
		return rst;
	}

	@RequestMapping("/update.do")
	@ResponseBody
	public Rst update(TbUser user) {
		Rst rst = new Rst();

		if (null == user) {
			rst.setCode(Constant.ERROR);
			rst.setMessage("用户信息不能为空");
			return rst;
		}

		int state = tbuserservice.updateTbUser(user);
		if (0 < state) {
			rst.setCode(Constant.SUCCESS);
			rst.setMessage("修改成功");
		} else {
			rst.setCode(Constant.ERROR);
			rst.setMessage("修改失败");
		}
		return rst;
	}

	@RequestMapping("/del.do")
	@ResponseBody
	public Rst del(Integer[] userIds) {
		Rst rst = new Rst();

		if (ArrayUtils.isEmpty(userIds)) {
			rst.setCode(Constant.ERROR);
			rst.setMessage("参数错误,删除失败");
		}
		int state = tbuserservice.deleteTbUsers(userIds);

		if (0 < state) {
			rst.setCode(Constant.SUCCESS);
			rst.setMessage("成功删除【" + state + "】条数据");
		} else {
			rst.setCode(Constant.ERROR);
			rst.setMessage("删除失败");
		}
		return rst;
	}

}
