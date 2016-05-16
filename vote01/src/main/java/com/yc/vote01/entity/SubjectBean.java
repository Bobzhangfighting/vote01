package com.yc.vote01.entity;

import java.io.Serializable;

public class SubjectBean implements Serializable {

	private static final long serialVersionUID = -9045165149500846302L;
	private int vsId;
	private String vsTitle;
	private int optionCount;
	private int voteUserCount;
	
	public int getOptionCount() {
		return optionCount;
	}
	public void setOptionCount(int optionCount) {
		this.optionCount = optionCount;
	}
	public int getVsId() {
		return vsId;
	}
	public void setVsId(int vsId) {
		this.vsId = vsId;
	}
	public String getVsTitle() {
		return vsTitle;
	}
	public void setVsTitle(String vsTitle) {
		this.vsTitle = vsTitle;
	}
	
	public int getVoteUserCount() {
		return voteUserCount;
	}
	public void setVoteUserCount(int voteUserCount) {
		this.voteUserCount = voteUserCount;
	}
	@Override
	public String toString() {
		return "SubjectBean [vsId=" + vsId + ", vsTitle=" + vsTitle
				+ ", optionCount=" + optionCount + ", voteUserCount="
				+ voteUserCount + "]";
	}
}
