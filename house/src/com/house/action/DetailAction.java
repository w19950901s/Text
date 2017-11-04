package com.house.action;

import com.house.dao.DetailDao;
import com.house.vo.Detail;
import com.opensymphony.xwork2.ActionSupport;

public class DetailAction extends ActionSupport{
	//接收的参数
	private int fwid;
	//传出的参数
	private Detail detail;
	
	public String detail() throws Exception{
		
		//调用dao
		detail = DetailDao.detailList(fwid);
		
		return "detail_list";
	}

	public int getFwid() {
		return fwid;
	}

	public void setFwid(int fwid) {
		this.fwid = fwid;
	}

	public Detail getDetail() {
		return detail;
	}

	public void setDetail(Detail detail) {
		this.detail = detail;
	}
	
}
