package com.house.action;

import java.util.*;
import com.house.dao.*;
import com.house.vo.*;
import com.opensymphony.xwork2.ActionSupport;

public class HouseAction extends ActionSupport{
	//要传递的参数
	private int currentPage;
	private final int SIZES=5;
	//要传出的参数
	private Page p;
	private List fwlxlist;
	private List qxlist;
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		//房屋信息
		p = FwxxDao.fwxxList(currentPage, SIZES);
		//房屋类型
		fwlxlist = FwlxDao.fwlxList();
		//区县类型
		qxlist = QxDao.qxList();
		
		return "index";
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getSIZES() {
		return SIZES;
	}
	public Page getP() {
		return p;
	}
	public void setP(Page p) {
		this.p = p;
	}
	public List getFwlxlist() {
		return fwlxlist;
	}
	public void setFwlxlist(List fwlxlist) {
		this.fwlxlist = fwlxlist;
	}
	public List getQxlist() {
		return qxlist;
	}
	public void setQxlist(List qxlist) {
		this.qxlist = qxlist;
	}
	
}
