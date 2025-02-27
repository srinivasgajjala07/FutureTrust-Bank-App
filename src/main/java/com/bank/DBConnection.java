package com.bank;
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {
	private static Connection con=null;
	DBConnection(){}
	static {
	try {
		Class.forName(DBInfo.driver);
		con=DriverManager.getConnection(DBInfo.dburl,DBInfo.uName,DBInfo.pWord);
		
	}catch(Exception e) {
		e.printStackTrace();
		
	}}
	
	public static Connection getCon() {
		return con;
	}
	
	

}
