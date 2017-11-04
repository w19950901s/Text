package com.house.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.house.tool.BaseDao;
import com.house.vo.Qx;

public class QxDao {
	public static List qxList() throws Exception{
		String sql = "select * from tbl_qx";
		ResultSet rs = BaseDao.executeQuery(sql, new Object[]{});
		List list = new ArrayList();
		while(rs.next()){
			Qx qx = new Qx(rs.getInt(1), rs.getString(2));
			list.add(qx);
		}
		return list;
	}
}
