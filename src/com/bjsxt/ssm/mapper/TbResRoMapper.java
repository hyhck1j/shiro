package com.bjsxt.ssm.mapper;

import com.bjsxt.ssm.bean.TbResRo;

public interface TbResRoMapper {

	void insertTbResRo(TbResRo resro);
	
	TbResRo selectTbResRo(TbResRo resro);
	
	void deleteTbResRo(int resourceroleid);
	
	void updateTbResRo(TbResRo resourcerolename);
	
}
