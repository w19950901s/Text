package com.house.dao;

import java.sql.ResultSet;

import com.house.tool.BaseDao;
import com.house.vo.User;

public class UserDao {
	//登录
	public static User login(String uname,String upass) throws Exception{
		String sql = "select * from tbl_user where uname=? and upass=?";
		ResultSet rs = BaseDao.executeQuery(sql, new Object[]{uname,upass});
		User u = null;
		if(rs.next()){
			u = new User(rs.getInt(1), rs.getString(2), rs.getString(3));
		}
		return u;
	}
	
	//注册前判断用户是否存在
	public static int selectUname( String uname) throws Exception{
		String sql = "select * from tbl_user where uname=?";
		ResultSet rs = BaseDao.executeQuery(sql, new Object[]{uname});
		int count = 0;
		if(rs.next()){
			count = 1;
		}
		return count;
		
	}
	
	//注册
	public static int reg(String uname,String upass) throws Exception{
		String sql="insert into tbl_user values(default,?,?)";
		int i = BaseDao.executeUpdate(sql, new Object[]{uname,upass});
		return i;
	}
	
	
}
