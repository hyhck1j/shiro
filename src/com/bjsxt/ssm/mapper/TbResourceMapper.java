package com.bjsxt.ssm.mapper;

import java.util.List;
import java.util.Map;

import com.bjsxt.ssm.bean.TbResource;

public interface TbResourceMapper {

	void insertTbResource(TbResource resource);
	
	void deleteTbResource(int resourceid);
	
	void updateTbResource(TbResource resourcename);
	
	List<TbResource> selectTbResourceByResourceName(String resourceName);
	
	int queryTbResourceCount();
	
	List<TbResource> pagination(Map<String, Integer> query);

	TbResource selectTbResource(int resourceId);
}
