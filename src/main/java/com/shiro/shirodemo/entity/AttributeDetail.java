package com.shiro.shirodemo.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import org.hibernate.validator.constraints.NotBlank;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author jwy
 * @since 2017-12-26
 */
@TableName("sys_attribute_detail")
public class AttributeDetail extends Model<AttributeDetail> {

    private static final long serialVersionUID = 1L;

	private String id;
    /**
     * 属性id
     */
	private String attrId;
    /**
     * 属性明细id
     */
	private String name;


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getAttrId() {
		return attrId;
	}

	public void setAttrId(String attrId) {
		this.attrId = attrId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public static final String ID = "id";

	public static final String ATTRID = "attrId";

	public static final String NAME = "name";

	@Override
	protected Serializable pkVal() {
		return this.id;
	}

	@Override
	public String toString() {
		return "AttributeDetail{" +
			"id=" + id +
			", attrId=" + attrId +
			", name=" + name +
			"}";
	}
}
