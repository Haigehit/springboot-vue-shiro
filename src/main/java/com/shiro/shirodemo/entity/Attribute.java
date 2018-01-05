package com.shiro.shirodemo.entity;

import java.io.Serializable;

import com.baomidou.mybatisplus.activerecord.Model;
import com.baomidou.mybatisplus.annotations.TableName;
import org.hibernate.validator.constraints.NotBlank;
import org.hibernate.validator.constraints.NotEmpty;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author jwy
 * @since 2017-12-26
 */
@TableName("sys_attribute")
public class Attribute extends Model<Attribute> {

    private static final long serialVersionUID = 1L;

	private String id;
    /**
     * 属性名称
     */
    @NotBlank(message = "属性名称不能为空")
	private String name;


	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public static final String ID = "id";

	public static final String NAME = "name";

	@Override
	protected Serializable pkVal() {
		return this.id;
	}

	@Override
	public String toString() {
		return "Attribute{" +
			"id=" + id +
			", name=" + name +
			"}";
	}
}
