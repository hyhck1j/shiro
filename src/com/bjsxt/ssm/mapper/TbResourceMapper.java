package com.bjsxt.ssm.mapper;

import com.bjsxt.ssm.bean.TbResource;

public interface TbResourceMapper {

	void insertTbResource(TbResource resource);
	
	TbResource selectTbResource(TbResource resource);
	
	void deleteTbResource(int resourceid);
	
	void updateTbResource(TbResource resourcename);
	
}
