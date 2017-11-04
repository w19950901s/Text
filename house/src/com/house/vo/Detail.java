package com.house.vo;

import java.util.Date;

public class Detail {
	private int fwid;			//房屋ID
	private int uid;			//用户ID
	private int jdid;			//街道ID
	private int lxid;			//类型ID
	private int shi;			//室
	private int ting;			//厅
	private String fwxx;		//房屋信息
	private double zj;			//租金
	private String title;		//标题
	private Date date;			//发布日期
	private String telephone;	//联系人电话
	private String lxr;			//联系人
	
	private String fwlx;
	
	private String jd;
	private int qxid;
	
	private String qx;
	
	public Detail(){}
	

	public Detail(int fwid, int uid, int jdid, int lxid, int shi, int ting, String fwxx, double zj, String title,
			Date date, String telephone, String lxr, String fwlx, String jd, int qxid, String qx) {
		this.fwid = fwid;
		this.uid = uid;
		this.jdid = jdid;
		this.lxid = lxid;
		this.shi = shi;
		this.ting = ting;
		this.fwxx = fwxx;
		this.zj = zj;
		this.title = title;
		this.date = date;
		this.telephone = telephone;
		this.lxr = lxr;
		this.fwlx = fwlx;
		this.jd = jd;
		this.qxid = qxid;
		this.qx = qx;
	}


	public int getFwid() {
		return fwid;
	}

	public void setFwid(int fwid) {
		this.fwid = fwid;
	}

	public int getUid() {
		return uid;
	}

	public void setUid(int uid) {
		this.uid = uid;
	}

	public int getJdid() {
		return jdid;
	}

	public void setJdid(int jdid) {
		this.jdid = jdid;
	}

	public int getLxid() {
		return lxid;
	}

	public void setLxid(int lxid) {
		this.lxid = lxid;
	}

	public int getShi() {
		return shi;
	}

	public void setShi(int shi) {
		this.shi = shi;
	}

	public int getTing() {
		return ting;
	}

	public void setTing(int ting) {
		this.ting = ting;
	}

	public String getFwxx() {
		return fwxx;
	}

	public void setFwxx(String fwxx) {
		this.fwxx = fwxx;
	}

	public double getZj() {
		return zj;
	}

	public void setZj(double zj) {
		this.zj = zj;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getTelephone() {
		return telephone;
	}

	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}

	public String getLxr() {
		return lxr;
	}

	public void setLxr(String lxr) {
		this.lxr = lxr;
	}

	public String getFwlx() {
		return fwlx;
	}

	public void setFwlx(String fwlx) {
		this.fwlx = fwlx;
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

	public String getQx() {
		return qx;
	}

	public void setQx(String qx) {
		this.qx = qx;
	}
	
}
