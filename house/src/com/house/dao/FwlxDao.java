package com.house.dao;

import java.sql.*;
import java.util.*;
import com.house.tool.BaseDao;
import com.house.vo.Fwlx;

public class FwlxDao {
	//查询房屋类型
	public static List fwlxList() throws Exception{
		String sql = "select * from tbl_fwlx";
		ResultSet rs = BaseDao.executeQuery(sql, new Object[]{});
		List list = new ArrayList();
		while(rs.next()){
			Fwlx fwlx = new Fwlx(rs.getInt(1), rs.getString(2));
			list.add(fwlx);
		}
		return list;
	}

}
