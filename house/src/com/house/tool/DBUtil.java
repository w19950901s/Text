package com.house.tool;

import java.io.*;
import java.sql.*;
import java.util.*;

public class DBUtil {
	public static Connection getConn() throws Exception{
		//加载jdbc.Properties文件
		Properties pro = new Properties();
		InputStream is=DBUtil.class.getResourceAsStream("jdbc.properties");
		pro.load(is);
		
		//获得文件中的值，驱动，url,用户名，密码
		String driver = pro.getProperty("jdbc.driver");
		String url = pro.getProperty("jdbc.url");
		String user = pro.getProperty("jdbc.user");
		String password = pro.getProperty("jdbc.password");
		
		Class.forName(driver);
		Connection conn = DriverManager.getConnection(url, user, password);
		return conn;
	}
}
