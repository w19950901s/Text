package com.house.action;

import java.util.Map;

import org.apache.struts2.ServletActionContext;

import com.house.dao.FwxxDao;
import com.house.vo.Page;
import com.opensymphony.xwork2.ActionSupport;

public class SearchAction extends ActionSupport{
	//接受的参数
	private String title;//标题
	private int jdid;//街道ID
	private double zj_low;//最低租金
	private double zj_high;//最高租金
	private int shi;//室
	private int ting;//厅
	private int[] lxid;//类型id 多个
	private int date;//日期
	
	private int sizes = 3;
	private int currentPage;
	private int flag;
	//传出的参数
	private Page p;
	
	public String search() throws Exception{
		Map session = ServletActionContext.getContext().getSession();
		String sql="";
		if(flag==0){
			sql = "select * from tbl_fwxx where 1=1";
			if(title!=null && !title.equals("")){
				sql = sql+" and title like '%"+title+"%'";
			}
			if(jdid!=0){
				sql = sql+" and jdid="+jdid;
			}
			if(zj_low!=0){
				sql = sql+" and zj>="+zj_low;
			}
			if(zj_high!=0){
				sql = sql+" and zj<="+zj_high;
			}
			if(shi!=0){
				sql = sql+" and shi="+shi;
			}
			if(ting!=0){
				sql = sql+" and ting="+ting;
			}
			if(lxid!=null && lxid.length>0){
				String s = "(";
				for(int i=0;i<lxid.length-1;i++){
					s = s+lxid[i]+",";
				}
				s = s+lxid[lxid.length-1]+")";
				
				sql = sql+" and lxid in"+s;
			}
			
			if(date!=0){
				sql = sql+" and datediff(now(),date)<="+date;
			}
			session.put("sql", sql);
		}else{
			sql = session.get("sql").toString();
		}
		
		int allSizes = FwxxDao.searchCounts(sql);
		int allPages = allSizes%sizes==0?allSizes/sizes:allSizes/sizes+1;
		
		int begin = (currentPage-1)*sizes;
		
		sql = sql +" order by date desc limit "+begin+","+sizes;
		//System.out.println(sql);
		//高级搜索
		p = FwxxDao.search(sql);
		p.setAllSizes(allSizes);
		p.setAllPages(allPages);
		p.setCurrentPage(currentPage);
		p.setSizes(sizes);
		return "search_list";
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public int getJdid() {
		return jdid;
	}

	public void setJdid(int jdid) {
		this.jdid = jdid;
	}

	public double getZj_low() {
		return zj_low;
	}

	public void setZj_low(double zj_low) {
		this.zj_low = zj_low;
	}

	public double getZj_high() {
		return zj_high;
	}

	public void setZj_high(double zj_high) {
		this.zj_high = zj_high;
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

	public int[] getLxid() {
		return lxid;
	}

	public void setLxid(int[] lxid) {
		this.lxid = lxid;
	}

	public int getDate() {
		return date;
	}

	public void setDate(int date) {
		this.date = date;
	}

	public Page getP() {
		return p;
	}

	public void setP(Page p) {
		this.p = p;
	}

	public int getSizes() {
		return sizes;
	}

	public void setSizes(int sizes) {
		this.sizes = sizes;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}
	
}
