package com.bank;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AccountCloseDAO {
	int acclose=0;double amt=0.0;
	public int close(UserBean u) {
		Connection con=DBConnection.getCon();
		String accnum=u.getAccno();
		String pword=u.getPword();
		String name="";
		try {
			PreparedStatement psmt=con.prepareStatement("select UDEPOSIT,UNAME from bankaccount where uaccno=? and upword=?");
			psmt.setString(1,u.getAccno());
			psmt.setString(2, u.getPword());
			ResultSet rs=psmt.executeQuery();
			if(rs.next()) {
				amt=rs.getDouble("udeposit");
				name=rs.getString("UNAME");
			}
			u.setName(name);
			if(amt==0.0) {
				
				try(PreparedStatement ps=con.prepareStatement("delete from bankaccount where uaccno=? and upword=?");){
					
					ps.setString(1, accnum);
					ps.setString(2, pword);
					acclose=ps.executeUpdate();
					
				}
				
			}
			}
		catch(Exception e) 
		{e.printStackTrace();}
		
		
		return acclose;
	}

}
