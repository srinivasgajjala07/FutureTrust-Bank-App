package com.bank;

import java.io.IOException;
import java.sql.SQLException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/NewAccountServlet")
public class createAccountServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		long phnum=Long.parseLong(req.getParameter("phone"));
		String address=req.getParameter("address");
		double damt=Double.parseDouble(req.getParameter("deposit"));
		String pass=req.getParameter("password");
		String repass=req.getParameter("repassword");
		
		if(!pass.equals(repass)) {
			
			req.setAttribute("err", "password are not matched......");
			req.getRequestDispatcher("failed.jsp").forward(req, res);
			return;	
		}
		UserBean ub=new UserBean();
		ub.setName(name);
		ub.setEmail(email);
        ub.setPhno(phnum);
        ub.setAddress(address);
        ub.setDeposit(damt);
        ub.setPword(pass);
  
			try {
				int	k=new UserAccountDAO().insert(ub);
				if(k>0) {
					
					req.setAttribute("msg","Your Account CreatedSucessfully.....");
					req.setAttribute("ubean",ub);
					req.getRequestDispatcher("acreatedSucess.jsp").forward(req, res);
				}
				
			} catch (SQLException e) {
				e.printStackTrace();
			}	
	}
	

}
