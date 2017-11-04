package com.house.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.house.tool.BaseDao;
import com.house.vo.Fwxx;
import com.house.vo.Page;

public class PostDao {
	//发布
	public static int addPost(Fwxx fwxx) throws Exception{
		
		String sql = "insert into tbl_fwxx values(default,?,?,?,?,?,?,?,?,now(),?,?)";
		int i = BaseDao.executeUpdate(sql, new Object[]{fwxx.getUid(),fwxx.getJdid(),fwxx.getLxid(),fwxx.getShi(),fwxx.getTing(),fwxx.getFwxx(),fwxx.getZj(),fwxx.getTitle(),fwxx.getTelephone(),fwxx.getLxr()});
		return i;
	}
	
	//查看用户已经发布的房屋信息
	public static Page fwxxList(int uid,int currentPage,int sizes) throws Exception{//currentPage是当前页，sizes是每页显示的条数
		//第一个？是起始的条数，第二个？是每页显示的条数
		String sql = "select * from tbl_fwxx where uid=? order by date desc limit ?,?";
		//起始位置
		//int begin = (当前页-1)*sizes；
		int begin = (currentPage-1)*sizes;//第一个？
		//总条数
		int allSizes = getCounts(uid);
		//总页数   3  10
		int allPages = allSizes%sizes==0?allSizes/sizes:allSizes/sizes+1;
		ResultSet rs = BaseDao.executeQuery(sql, new Object[]{uid,begin,sizes});
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
	public static int getCounts(int uid) throws Exception{
		String sql = "select count(*) from tbl_fwxx where uid=?";
		ResultSet rs = BaseDao.executeQuery(sql, new Object[]{uid});
		int count = 0;
		
		if(rs.next()){
			count = rs.getInt(1);
		}
		return count;
	}
	//删除
	public static int delete(int fwid) throws Exception{
		String sql = "delete from tbl_fwxx where fwid=?";
		int i = BaseDao.executeUpdate(sql, new Object[]{fwid});
		return i;
	}
	
}
