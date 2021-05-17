package com.bjsxt.ssm.bean;

public class TbUserRole {
	private int urId;
	private String userName;
	private int userRoleId;
	public int getUrId() {
		return urId;
	}
	public void setUrId(int urId) {
		this.urId = urId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public int getUserRoleId() {
		return userRoleId;
	}
	public void setUserRoleId(int userRoleId) {
		this.userRoleId = userRoleId;
	}
	@Override
	public String toString() {
		return "TbUserRole [urId=" + urId + ", userName=" + userName
				+ ", userRoleId=" + userRoleId + "]";
	}
	

}
