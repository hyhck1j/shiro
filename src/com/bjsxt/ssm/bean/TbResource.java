package com.bjsxt.ssm.bean;

public class TbResource {
	private int resourceId;
	private String resourceName;
	private String resourceUrl;
	public int getResourceId() {
		return resourceId;
	}
	public void setResourceId(int resourceId) {
		this.resourceId = resourceId;
	}
	public String getResourceName() {
		return resourceName;
	}
	public void setResourceName(String resourceName) {
		this.resourceName = resourceName;
	}
	public String getResourceUrl() {
		return resourceUrl;
	}
	public void setResourceUrl(String resourceUrl) {
		this.resourceUrl = resourceUrl;
	}
	@Override
	public String toString() {
		return "TbResource [resourceId=" + resourceId + ", resourceName="
				+ resourceName + ", resourceUrl=" + resourceUrl + "]";
	}

}
