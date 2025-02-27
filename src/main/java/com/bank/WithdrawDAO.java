package com.bank;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class WithdrawDAO {
    int w = 0;

    public int withdraw(UserBean wb) {
        Connection con = null;
        PreparedStatement ps = null;
        PreparedStatement psmt = null;
        ResultSet rs = null;
        double amt = 0.0;
        String name="";
        try {
            con = DBConnection.getCon();
            ps = con.prepareStatement("SELECT * FROM bankaccount WHERE UACCNO =? AND UPWORD =?");
            ps.setString(1,wb.getAccno());
            ps.setString(2, wb.getPword());
            rs = ps.executeQuery();
            if (rs.next()) {
                rs.getString(1);
            	name=rs.getString(2);
            	rs.getString(3);
            	rs.getLong(4);
            	rs.getString(5);
            	amt=rs.getDouble(6);
            	rs.getString(7);
               
            } 
           wb.setName(name);
            if (wb.getDeposit() > 0 && wb.getDeposit() <= amt) {
                psmt = con.prepareStatement("UPDATE bankaccount SET UDEPOSIT = UDEPOSIT - ? WHERE UACCNO = ? AND UPWORD = ?");
                psmt.setDouble(1, wb.getDeposit());
                psmt.setString(2, wb.getAccno());
                psmt.setString(3, wb.getPword());
                
                w = psmt.executeUpdate();
                
            }
        } catch (Exception e) {
            e.printStackTrace();
        } 
        

        return w;
    }
}
