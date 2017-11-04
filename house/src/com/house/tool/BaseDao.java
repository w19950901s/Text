package com.house.tool;

import java.sql.*;

public class BaseDao {
	//增删改；executeUpdate int
	public static int executeUpdate(String sql,Object[] o) throws Exception{
		Connection conn = DBUtil.getConn();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		for(int i=0;i<o.length;i++){
			pstmt.setObject(i+1, o[i]);
		}
		int i = pstmt.executeUpdate();
		return i;
		
	}
	
	
	//查询 executeQuery ResultSet
	public static ResultSet executeQuery(String sql,Object[] o) throws Exception{
		Connection conn = DBUtil.getConn();
		PreparedStatement pstmt = conn.prepareStatement(sql);
		for(int i=0;i<o.length;i++){
			pstmt.setObject(i+1, o[i]);
		}
			ResultSet rs = pstmt.executeQuery();
			return rs;
				
				
				
				
				
				
				
				
				
				
	}
}
