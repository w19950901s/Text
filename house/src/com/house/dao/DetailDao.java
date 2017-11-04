package com.house.dao;

import java.sql.ResultSet;
import java.util.List;

import com.house.tool.BaseDao;
import com.house.vo.Detail;

public class DetailDao {
	//查询详情页的信息，包含房屋信息表 房屋类型表 房屋街道表 区县表
	public static Detail detailList(int fwid) throws Exception{
		String sql="select tbl_fwxx.*,tbl_fwlx.*,tbl_jd.*,tbl_qx.* from tbl_fwxx,tbl_fwlx,tbl_jd,tbl_qx where tbl_fwxx.lxid=tbl_fwlx.lxid and tbl_fwxx.jdid=tbl_jd.jdid and tbl_qx.qxid=tbl_jd.qxid and fwid=?";
		ResultSet rs = BaseDao.executeQuery(sql, new Object[]{fwid});
		Detail detail = null;
		if(rs.next()){
			detail = new Detail(rs.getInt(1), rs.getInt(2), rs.getInt(3), rs.getInt(4), rs.getInt(5), rs.getInt(6), rs.getString(7), rs.getDouble(8), rs.getString(9), rs.getDate(10), rs.getString(11), rs.getString(12), rs.getString(14), rs.getString(16), rs.getInt(17), rs.getString(19));
			
		}
		return detail;
	}
}
