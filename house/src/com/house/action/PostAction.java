package com.house.action;

import java.util.*;
import org.apache.struts2.ServletActionContext;
import com.house.dao.*;
import com.house.vo.*;
import com.opensymphony.xwork2.ActionSupport;

public class PostAction extends ActionSupport{
	//接收参数
	private Fwxx fw;
	private int currentPage;
	private int sizes = 10;
	private int fwid;
	//传出参数
	private List lxlist;
	private List qxlist;
	private Page p;
	//查询发布页面需要的房屋类型，曲县,然后跳转到发布页面
	public String postFrom() throws Exception{
		lxlist = FwlxDao.fwlxList();
		qxlist = QxDao.qxList();
		return "post_form";
	}
	//发布房屋信息
	public String addPost() throws Exception{
		
		int i = PostDao.addPost(fw);
		return "post_success";
	}
	//查看当前用户发布的房屋信息
	public String postFwxx() throws Exception{
		if(currentPage==0){
			currentPage = 1;
		}
		Map session = ServletActionContext.getContext().getSession();
		User u = (User)session.get("user");
		int uid = u.getUid();
		p = PostDao.fwxxList(uid, currentPage, sizes);
		return "post_fwxx";
	}
	//删除
	public String delete() throws Exception{
		int i = PostDao.delete(fwid);
		return "delete_success";
	}
	
	public Page getP() {
		return p;
	}
	public void setP(Page p) {
		this.p = p;
	}
	public List getLxlist() {
		return lxlist;
	}
	public void setLxlist(List lxlist) {
		this.lxlist = lxlist;
	}
	public List getQxlist() {
		return qxlist;
	}
	public void setQxlist(List qxlist) {
		this.qxlist = qxlist;
	}
	public Fwxx getFw() {
		return fw;
	}
	public void setFw(Fwxx fw) {
		this.fw = fw;
	}
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getSizes() {
		return sizes;
	}
	public void setSizes(int sizes) {
		this.sizes = sizes;
	}
	public int getFwid() {
		return fwid;
	}
	public void setFwid(int fwid) {
		this.fwid = fwid;
	}
	
	
}
