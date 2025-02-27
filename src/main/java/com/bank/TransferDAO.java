package com.bank;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Savepoint;

public class TransferDAO {
	
	int t1,t2,rowinserted=0;
	public int transfer(UserBean u,String raccno) {
		double accbal=0.0;String uname="";
		Connection con=DBConnection.getCon();
		try {
			con.setAutoCommit(false);
			Savepoint sp=con.setSavepoint();
			PreparedStatement p=con.prepareStatement("select  UNAME,UDEPOSIT from bankaccount where UACCNO=? and upword=?");
			p.setString(1,u.getAccno());
			p.setString(2,u.getPword());
			
			ResultSet rs=p.executeQuery();
			if(rs.next()) {
				uname=rs.getString("UNAME");
				accbal=rs.getDouble("UDEPOSIT");
				
			}u.setName(uname);
			if(accbal>=u.getDeposit()) {
				
				try(PreparedStatement ps=con.prepareStatement("update bankaccount set UDEPOSIT=UDEPOSIT-? where uaccno=? ");){
					ps.setDouble(1,u.getDeposit());
					ps.setString(2, u.getAccno());
					t2=ps.executeUpdate();
				}
				try(PreparedStatement psm=con.prepareStatement("update bankaccount set UDEPOSIT=UDEPOSIT+? where uaccno=? ");){
					psm.setDouble(1,u.getDeposit());
					psm.setString(2, raccno);
					t1=psm.executeUpdate();
				}
				if(t1==1 && t2==1) {
					rowinserted=1;
					con.commit();
				}else {
					con.rollback(sp);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	
		
		
	return rowinserted;	
	}
}
