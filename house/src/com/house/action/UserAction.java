package com.house.action;

import java.util.*;

import org.apache.struts2.ServletActionContext;
import com.house.dao.*;
import com.house.vo.*;
import com.opensymphony.xwork2.ActionSupport;

public class UserAction extends ActionSupport{
	//接收参数
	private User user;
	private int currentPage=1;
	private int sizes = 5;


	//传出的参数
	private Page p;
	private List lxlist;
	private List qxlist;
	private List fwlxlist;
	private String msg;
	//登录
	public String login() throws Exception{
		User u = UserDao.login(user.getUname(), user.getUpass());
		Map session = ServletActionContext.getContext().getSession();
		if(u!=null){
			session.put("user", u);
			return "login_success";
		}else{
			return "login_fail";
		}
		 
	}
	
	//登陆成功后进行房屋分页
	public String fenye() throws Exception{
		p = FwxxDao.fwxxList(currentPage, sizes);
		lxlist = FwlxDao.fwlxList();
		qxlist = QxDao.qxList();
		fwlxlist = FwlxDao.fwlxList();
		return "login_fenye";
		
	}
	//注册前查询用户名是否存在
	public String selectUname() throws Exception{
		//保存注册界面传递的用户名和密码，方便注册使用
		Map session = ServletActionContext.getContext().getSession();
		session.put("uname", user.getUname());
		session.put("upass", user.getUpass());
		
		int count = UserDao.selectUname(user.getUname());
		if(count>0){
			//此用户已经存在
			msg = "此用户已经存在";
			return "is_reg";
		}else{
			return "go_reg";
		}
	}
	
	//注册
	public String reg() throws Exception{
		//使用注册页面传递过来之后保存的用户名和密码
		Map session = ServletActionContext.getContext().getSession();
		String uname = session.get("uname").toString();
		String upass = session.get("upass").toString();
		int i = UserDao.reg(uname, upass);
		if(i>0){
			//注册成功
			return "reg_success";
		}else{
			//注册失败
			msg="注册失败";
			return "reg_fail";
		}
		
	}
	//注销
	public String logOut(){
		Map session = ServletActionContext.getContext().getSession();
		User u = (User)session.get("user");
		u = null;
		session.put("user", u);
		return "log_out";
	}
	
	//判断用户是否已经登录
	public String isLogin(){
		Map session = ServletActionContext.getContext().getSession();
		User u = (User)session.get("user");
		if(u!=null){
			//登录了
			return "is_login";
		}else{
			//没有登录
			return "no_login";
		}
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
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

	public List getFwlxlist() {
		return fwlxlist;
	}

	public void setFwlxlist(List fwlxlist) {
		this.fwlxlist = fwlxlist;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	
}
