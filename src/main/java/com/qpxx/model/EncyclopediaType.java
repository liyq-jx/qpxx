package com.qpxx.model;

import java.util.Date;

/**
 * 
 * @author liyq
 * ��թ���ʵ����
 *
 */
public class EncyclopediaType {
    private Integer id;

    private String name; //�������

    private Date createTime;//����ʱ��
    
    private String common;//����
    
    private String remark;

    private Byte status; //״̬��0������,1��ɾ����

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