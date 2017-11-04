package com.house.dao;

import java.sql.ResultSet;
import java.util.*;

import com.house.tool.BaseDao;
import com.house.vo.Jd;

public class JdDao {
	public static List jdlist(int qxid) throws Exception{
		String sql = "select * from tbl_jd where qxid=?";
		ResultSet rs = BaseDao.executeQuery(sql, new Object[]{qxid});
		List list = new ArrayList();
		while(rs.next()){
			Jd jd = new Jd(rs.getInt(1), rs.getString(2), rs.getInt(3));
			list.add(jd);
		}
		return list;
	}

}
