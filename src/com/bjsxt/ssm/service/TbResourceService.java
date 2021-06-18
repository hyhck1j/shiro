package com.bjsxt.ssm.service;

import java.util.List;

import com.bjsxt.ssm.bean.TbResource;

public interface TbResourceService {

	int updateTbResource(TbResource tbResource);
	
	void deleteTbResource(int resourceid);
	
	int saveTbResource(TbResource tbResource);
	
	TbResource selectTbResource(int resourceId);
	
	int queryCount();

	List<TbResource> pagination(Integer pageSize, Integer page);

	int deleteTbResource(Integer[] resourceIds);
	
}
