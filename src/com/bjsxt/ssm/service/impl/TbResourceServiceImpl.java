package com.bjsxt.ssm.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bjsxt.ssm.bean.TbResource;
import com.bjsxt.ssm.mapper.TbResourceMapper;
import com.bjsxt.ssm.service.TbResourceService;

@Service

public class TbResourceServiceImpl implements TbResourceService {

	
	@Autowired
	private TbResourceMapper tbresourcemapper;
	@Override
	public int updateTbResource(TbResource tbResource) {
		this.tbresourcemapper.updateTbResource(tbResource);
		return 1;
	}

	@Override
	public void deleteTbResource(int resourceid) {
		this.tbresourcemapper.deleteTbResource(resourceid);
	}

	@Override
	public int saveTbResource(TbResource tbResource) {
		
		if(null==tbResource){
			return -1;
		}
		
		if (StringUtils.isBlank(tbResource.getResourceUrl())
				|| StringUtils.isBlank(tbResource.getResourceUrl())) {
			return -1;
		}
		

		this.tbresourcemapper.insertTbResource(tbResource);
		
		return tbResource.getResourceId();
	}

	@Override
	public TbResource selectTbResource(int resourceId) {
		//this.tbresourcemapper.selectTbResource(resourceId);
		return tbresourcemapper.selectTbResource(resourceId);
	}

	@Override
	public int queryCount() {
		int rst=tbresourcemapper.queryTbResourceCount();
		return rst;
	}

	@Override
	public List<TbResource> pagination(Integer pageSize, Integer page) {
		if (0 >= pageSize || 0 >= page) {
			return null;
		}
		int limit = (page - 1) * pageSize;
		Map<String, Integer> query = new HashMap<>();
		query.put("pageSize", pageSize);
		query.put("limit", limit);
		List<TbResource> rst=tbresourcemapper.pagination(query);
		return rst;
	}

	@Override
	public int deleteTbResource(Integer[] resourceIds) {
		if(ArrayUtils.isEmpty(resourceIds)){
			return -1;
		}
		int i=0;
		for(Integer id:resourceIds){
			this.deleteTbResource(id);
			i++;
		}
		return i;
	}

}
