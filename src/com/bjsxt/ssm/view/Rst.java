package com.bjsxt.ssm.view;

public class Rst {

	/**
	 * 服务端返回的状态 success or error
	 */
	private String code;

	/**
	 * 消息提示 success message or error message
	 */
	private String message;

	/**
	 * 服务端返回前段的有效数据
	 */
	private Object data;

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public Object getData() {
		return data;
	}

	public void setData(Object data) {
		this.data = data;
	}
}
