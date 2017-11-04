package com.house.vo;

import java.util.List;

public class Page {
	//当前页
	private int currentPage;
	//每页显示的条数
	private int sizes;
	//总条数
	private int allSizes;
	//总页数
	private int allPages;
	//结果集
	private List list;
	public Page(){}
	public Page(int currentPage,int sizes,int allSizes,int allPages,List list){
		this.currentPage=currentPage;
		this.sizes=sizes;
		this.allSizes=allSizes;
		this.allPages=allPages;
		this.list=list;
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
	public int getAllSizes() {
		return allSizes;
	}
	public void setAllSizes(int allSizes) {
		this.allSizes = allSizes;
	}
	public int getAllPages() {
		return allPages;
	}
	public void setAllPages(int allPages) {
		this.allPages = allPages;
	}
	public List getList() {
		return list;
	}
	public void setList(List list) {
		this.list = list;
	}
	
}
