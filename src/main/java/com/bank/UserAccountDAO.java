package com.bank;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class UserAccountDAO {
      int k=0;
      
      public String generateAccountNumber(){
	        // Fixed 3-digit prefix, e.g., bank or branch code (adjust as needed)
	        String prefix = "102"; // You can customize this prefix
	        
	        // Get the current timestamp in milliseconds, then take the last 5 digits for uniqueness
	        String timestampPart = String.valueOf(System.currentTimeMillis()).substring(8); // Last 5 digits
	        
	        // Generate a random 4-digit number to complete the 12-digit length
	        int randomPart = (int)(Math.random() * 9000) + 1000; // Ensures a 4-digit random number

	        // Combine prefix, timestamp, and random part
	        return prefix + timestampPart + randomPart;
	    }
	public  int insert(UserBean ub) throws SQLException {
		try {
		Connection con=DBConnection.getCon();
		PreparedStatement psmt=con.prepareStatement("insert into bankaccount values(?,?,?,?,?,?,?)");
		String accno=generateAccountNumber();
		psmt.setString(1, accno);
		psmt.setString(2, ub.getName());
		psmt.setString(3, ub.getEmail());
		psmt.setLong(4, ub.getPhno());
		psmt.setString(5, ub.getAddress());
		psmt.setDouble(6, ub.getDeposit());
		psmt.setString(7,ub.getPword());
		k=psmt.executeUpdate();
		ub.setAccno(accno);
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return k;
	}
}
