package com.house.dao;

import java.sql.*;
import java.util.*;

import com.house.tool.BaseDao;
import com.house.vo.*;

public class FwxxDao {
	//当前页，每页显示的条数，总条数，总页数，结果集
	//查询主界面房屋信息
	public static Page fwxxList(int currentPage,int sizes) throws Exception{//currentPage是当前页，sizes是每页显示的条数
		//第一个？是起始的条数，第二个？是每页显示的条数
		String sql = "select * from tbl_fwxx order by date desc limit ?,?";
		//起始位置
		//int begin = (当前页-1)*sizes；
		int begin = (currentPage-1)*sizes;//第一个？
		//总条数
		int allSizes = getCounts();
		//总页数   3  10
		int allPages = allSizes%sizes==0?allSizes/sizes:allSizes/sizes+1;
		ResultSet rs = BaseDao.executeQuery(sql, new Object[]{begin,sizes});
		List list = new ArrayList();
		while(rs.next()){
			Fwxx fwxx = new Fwxx(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getDate(10), rs.getString(11), rs.getString(12));
			list.add(fwxx);
		}
		//把数据封装到Page对象中
		Page page = new Page(currentPage, sizes, allSizes, allPages, list);
		return page;
	}
	//得到房屋信息的总条数
	public static int getCounts() throws Exception{
		String sql = "select count(*) from tbl_fwxx";
		ResultSet rs = BaseDao.executeQuery(sql, new Object[]{});
		int count = 0;
		
		if(rs.next()){
			count = rs.getInt(1);
		}
		return count;
	}
	
	//高级搜索
	public static Page search(String sql) throws Exception{
		ResultSet rs = BaseDao.executeQuery(sql, new Object[]{});
		List list = new ArrayList();
		while(rs.next()){
			Fwxx fwxx = new Fwxx(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getDate(10), rs.getString(11), rs.getString(12));
			list.add(fwxx);
		}
		Page p = new Page();
		p.setList(list);
		return p;
	}
	
	//查询高级搜索出来的结果的的总条数
	public static int searchCounts(String sql) throws Exception{
		ResultSet rs=BaseDao.executeQuery(sql, new Object[]{});
		//结果
		rs.last();
		//得到最后一行的结果
		int count = rs.getRow();
		return count;
	}
	
	
	
	
	
	
}
