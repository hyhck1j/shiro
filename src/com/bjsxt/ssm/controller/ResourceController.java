package com.bjsxt.ssm.controller;

import java.util.ArrayList;
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
import com.bjsxt.ssm.bean.TbResource;
import com.bjsxt.ssm.service.TbResourceService;
import com.bjsxt.ssm.view.Rst;

@Controller
@RequestMapping("/admin/resource")
public class ResourceController {
	
	@Autowired
	private TbResourceService tbResourceService;
	
	@RequestMapping("/list.do")
	public String list(ModelMap view){
		int totalNumber=tbResourceService.queryCount();
		view.addAttribute("totalNumber",totalNumber);
		return "resource/list";
	}
	
	@RequestMapping("/add.do")
	public String add(){
		return "resource/add";
	}
	
	@RequestMapping("/edit/{resourceId}.do")
	public String edit(@PathVariable Integer resourceId, ModelMap view) {

		TbResource tbResource=tbResourceService.selectTbResource(resourceId);
		view.addAttribute("tbResource", tbResource);
		return "resource/edit";
	}
	
	@RequestMapping("/save.do")
	@ResponseBody
	public Rst save(TbResource tbResource){
		Rst rst=new Rst();
		if(null==tbResource){
			rst.setCode(Constant.ERROR);
			rst.setMessage("用户信息不能为空");
			return rst;
		}
		int resourceId=tbResourceService.saveTbResource(tbResource);
		if (0 < resourceId) {
			rst.setCode(Constant.SUCCESS);
			rst.setMessage("新增成功");
		} else {
			rst.setCode(Constant.ERROR);
			rst.setMessage("新增失败");
		}
		return rst;
		
	}
	
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

		List<TbResource> list = tbResourceService.pagination(pageSize, page);

		rst.setCode(Constant.SUCCESS);
		rst.setMessage("获取成功");
		if (CollectionUtils.isNotEmpty(list)) {
			rst.setData(list);
		} else {
			rst.setData(new ArrayList<>());
		}
		return rst;
		
	}
	
	@RequestMapping("/del.do")
	@ResponseBody
	public Rst del(Integer[] resourceIds){
		Rst rst=new Rst();
		if(ArrayUtils.isEmpty(resourceIds)){
			rst.setCode(Constant.ERROR);
			rst.setMessage("参数错误,删除失败");	
		}
		int state=tbResourceService.deleteTbResource(resourceIds);
		
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
