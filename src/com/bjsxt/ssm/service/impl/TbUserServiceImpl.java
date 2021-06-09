package com.bjsxt.ssm.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.bjsxt.ssm.Constant;
import com.bjsxt.ssm.bean.TbUser;
import com.bjsxt.ssm.mapper.TbUserMapper;
import com.bjsxt.ssm.service.TbUserService;

@Service
public class TbUserServiceImpl implements TbUserService {

	@Autowired
	private TbUserMapper tbUserMapper;

	@Override
	public int updateTbUser(TbUser tbUser) {

		if (null == tbUser) {
			return -1;
		}
		if (0 >= tbUser.getUserId()) {
			return -1;
		}
		// 对象属性判空
		if (StringUtils.isBlank(tbUser.getUserName())
				|| StringUtils.isBlank(tbUser.getUserPwd())) {
			// TODO 抛异常
			return -1;
		}

		TbUser orginal = tbUserMapper.selectTbUser(tbUser.getUserId());
		if (null == orginal) {
			return -1;
		}

		if (!orginal.getUserName().equals(tbUser.getUserName())) {
			/***
			 * 检查用户名是否已注册过
			 */
			List<TbUser> users = tbUserMapper.selectTbUserByUserName(tbUser
					.getUserName());
			if (CollectionUtils.isNotEmpty(users)) {
				return -1;
			}
		}

		this.tbUserMapper.updateTbUser(tbUser);

		return 1;
	}

	@Override
	public void deleteTbUser(int userid) {
		this.tbUserMapper.deleteTbUser(userid);
	}

	@Override
	@Transactional(isolation = Isolation.DEFAULT, propagation = Propagation.REQUIRED)
	public int saveTbUser(TbUser user) {

		// 对象判空
		if (null == user) {
			// TODO 抛异常
			return -1;
		}
		// 对象属性判空
		if (StringUtils.isBlank(user.getUserName())
				|| StringUtils.isBlank(user.getUserPwd())) {
			// TODO 抛异常
			return -1;
		}
		// 对象的主键（userId）判空
		if (0 < user.getUserId()) {
			// TODO 抛异常
			return -1;
		}

		/***
		 * 检查用户名是否已注册过
		 */
		List<TbUser> users = tbUserMapper.selectTbUserByUserName(user
				.getUserName());
		if (CollectionUtils.isNotEmpty(users)) {
			return -1;
		}

		this.tbUserMapper.insertTbUser(user);
		return user.getUserId();
	}

	@Override
	public TbUser selectTbUser(int userid) {

		return tbUserMapper.selectTbUser(userid);
	}

	@Override
	public int queryCount() {
		int rst = tbUserMapper.queryTbUserCount();
		return rst;
	}

	@Override
	public List<TbUser> pagination(Integer pageSize, Integer page) {

		if (0 >= pageSize || 0 >= page) {
			return null;
		}
		int limit = (page - 1) * pageSize;
		Map<String, Integer> query = new HashMap<>();
		query.put("pageSize", pageSize);
		query.put("limit", limit);
		List<TbUser> rst = tbUserMapper.pagination(query);
		return rst;
	}

	@Override
	public int deleteTbUsers(Integer[] userIds) {
		if (ArrayUtils.isEmpty(userIds)) {
			return -1;
		}
		int i = 0 ;
		for (Integer id : userIds) {
			tbUserMapper.deleteTbUser(id);
			i++ ;
		}

		return i;
	}

}
