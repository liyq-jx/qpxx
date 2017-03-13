package com.qpxx.model;

import java.util.Date;

/**
 * 
 * @author liyq
 * 欺诈类别实体类
 *
 */
public class EncyclopediaType {
    private Integer id;

    private String name; //类别名称

    private Date createTime;//创建时间
    
    private String common;//内容
    
    private String remark;

    private Byte status; //状态（0：正常,1：删除）

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    
    public String getCommon() {
		return common;
	}

	public void setCommon(String common) {
		this.common = common;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Byte getStatus() {
        return status;
    }

    public void setStatus(Byte status) {
        this.status = status;
    }
}