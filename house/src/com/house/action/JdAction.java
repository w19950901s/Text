package com.house.action;

import java.util.*;
import com.house.dao.*;
import com.opensymphony.xwork2.ActionSupport;

public class JdAction extends ActionSupport{
	//接收的参数
	private int qxid;
	//传出参数
	private List jdlist;
	
	public String jdList() throws Exception{
		System.out.println("*************");
		jdlist = JdDao.jdlist(qxid);
		return "jd_list";
	}
	
	public List getJdlist() {
		return jdlist;
	}
	public void setJdlist(List jdlist) {
		this.jdlist = jdlist;
	}
	public int getQxid() {
		return qxid;
	}
	public void setQxid(int qxid) {
		this.qxid = qxid;
	}
	
}
