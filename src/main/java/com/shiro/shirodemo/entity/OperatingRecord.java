package com.shiro.shirodemo.entity;

import java.io.Serializable;

import java.util.Date;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author jwy
 * @since 2018-01-07
 */
@TableName("sys_operating_record")
public class OperatingRecord extends Model<OperatingRecord> {

    private static final long serialVersionUID = 1L;

	private String id;
    /**
     * 请求的url
     */
	private String requestUrl;
    /**
     * 远程的ip地址
     */
	private String remoteAddr;
    /**
     * 请求参数
     */
	private String params;
    /**
     * 请求方式
     */
	private String method;
	@TableField("create_time")
	private Date createTime;

	/**
	 * 标志
	 */
	private String flag;


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getRequestUrl() {
		return requestUrl;
	}

	public void setRequestUrl(String requestUrl) {
		this.requestUrl = requestUrl;
	}

	public String getRemoteAddr() {
		return remoteAddr;
	}

	public void setRemoteAddr(String remoteAddr) {
		this.remoteAddr = remoteAddr;
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}

	public String getMethod() {
		return method;
	}

	public void setMethod(String method) {
		this.method = method;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public String getFlag() {
		return flag;
	}

	public void setFlag(String flag) {
		this.flag = flag;
	}

	public static final String ID = "id";

	public static final String REQUESTURL = "requestUrl";

	public static final String REMOTEADDR = "remoteAddr";

	public static final String PARAMS = "params";

	public static final String METHOD = "method";

	public static final String CREATE_TIME = "create_time";

	public static final String FLAG = "flag";

	@Override
	protected Serializable pkVal() {
		return this.id;
	}

	@Override
	public String toString() {
		return "OperatingRecord{" +
			"id=" + id +
			", requestUrl=" + requestUrl +
			", remoteAddr=" + remoteAddr +
			", params=" + params +
			", method=" + method +
			", createTime=" + createTime +
			", flag=" + flag +
			"}";
	}
}
