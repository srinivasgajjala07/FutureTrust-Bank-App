package com.bank;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CheckBalDAO {
	double bal=0.0;String uname="";
	double balarr[]=new double[2];
	public double[] checkbal(UserBean ub) {
		
         try {
        	 Connection con=DBConnection.getCon();
        	 PreparedStatement psmt=con.prepareStatement("select  UDEPOSIT,UNAME from bankaccount where UACCNO=? and UPWORD=?");
        	 psmt.setString(1, ub.getAccno());
        	 psmt.setString(2, ub.getPword());
        	 ResultSet res= psmt.executeQuery();
        	 if(res.next()) {
        		 uname =res.getString("UNAME");
        		 balarr[0]=res.getDouble("UDEPOSIT");
        		 bal=1.0;
        		 balarr[1]=bal;
        	 }
        	 
        	 ub.setName(uname);
         }catch(Exception e) {
        	 e.printStackTrace();
         }
		return balarr;
	}

}
