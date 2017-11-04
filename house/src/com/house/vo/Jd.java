package com.house.vo;

public class Jd {
	private int jdid;
	private String jd;
	private int qxid;
	
	public Jd(){}
	public Jd(int jdid,String jd,int qxid){
		this.jdid=jdid;
		this.jd=jd;
		this.qxid=qxid;
	}
	
	public int getJdid() {
		return jdid;
	}
	public void setJdid(int jdid) {
		this.jdid = jdid;
	}
	public String getJd() {
		return jd;
	}
	public void setJd(String jd) {
		this.jd = jd;
	}
	public int getQxid() {
		return qxid;
	}
	public void setQxid(int qxid) {
		this.qxid = qxid;
	}
	
}
