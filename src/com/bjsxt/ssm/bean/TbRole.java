package com.bjsxt.ssm.bean;

public class TbRole {
	private int roldId;
	private String roleName;
	public int getRoldId() {
		return roldId;
	}
	public void setRoldId(int roldId) {
		this.roldId = roldId;
	}
	public String getRoleName() {
		return roleName;
	}
	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
	@Override
	public String toString() {
		return "TbRole [roldId=" + roldId + ", roleName=" + roleName + "]";
	}
	
	
}
