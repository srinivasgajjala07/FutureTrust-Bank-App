package com.bank;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DepositDAO {
  int rows=0;
	public int deposit(UserBean db) {
		try {
			
			Connection con=DBConnection.getCon();
			
			PreparedStatement ps=con.prepareStatement("update bankaccount set udeposit=udeposit+? where uaccno=? and upword=?");
			ps.setDouble(1, db.getDeposit());
			ps.setString(2,db.getAccno());
			ps.setString(3, db.getPword());
			rows=ps.executeUpdate();
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return rows;
	}

}
