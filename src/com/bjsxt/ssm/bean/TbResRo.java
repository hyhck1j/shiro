package com.bjsxt.ssm.bean;

public class TbResRo {

	private int resourceRoleId;
	private String resourceRoleName;
	private int resRoleId;
	public int getResourceRoleId() {
		return resourceRoleId;
	}
	public void setResourceRoleId(int resourceRoleId) {
		this.resourceRoleId = resourceRoleId;
	}
	public String getResourceRoleName() {
		return resourceRoleName;
	}
	public void setResourceRoleName(String resourceRoleName) {
		this.resourceRoleName = resourceRoleName;
	}
	public int getResRoleId() {
		return resRoleId;
	}
	public void setResRoleId(int resRoleId) {
		this.resRoleId = resRoleId;
	}
	@Override
	public String toString() {
		return "TbResRo [resourceRoleId=" + resourceRoleId
				+ ", resourceRoleName=" + resourceRoleName + ", resRoleId="
				+ resRoleId + "]";
	}
	
}
