package com.yc.vote01.entity;

public class Subject {
	
    private Long vsId;

    private String vsTitle;

    private Integer vsType;

    public Long getVsId() {
		return vsId;
	}

	public void setVsId(Long vsId) {
		this.vsId = vsId;
	}

	public String getVsTitle() {
		return vsTitle;
	}

	public void setVsTitle(String vsTitle) {
		this.vsTitle = vsTitle;
	}

	public Integer getVsType() {
        return vsType;
    }

    public void setVsType(Integer vsType) {
        this.vsType = vsType;
    }

	@Override
	public String toString() {
		return "\nSubject [vsId=" + vsId + ", vsTitle=" + vsTitle + ", vsType="
				+ vsType + "]";
	}
}