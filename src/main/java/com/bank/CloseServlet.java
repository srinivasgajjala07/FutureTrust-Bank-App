package com.bank;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/close")
public class CloseServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		String caccno=req.getParameter("caccno");
		String pword=req.getParameter("pword");
		UserBean ub=new UserBean();
		ub.setAccno(caccno);
		ub.setPword(pword);
		
		int accclose=new AccountCloseDAO().close(ub);
		
		if(accclose>0) {
			
			req.setAttribute("msg","Your account Closed sucessfully....");
			req.setAttribute("ub",ub);
			req.getRequestDispatcher("AcclosedSuessfully.jsp").forward(req, res);
		}else {
			
			req.setAttribute("msg", "you are unable to close account : may be reasons are \n 1. please withdraw your money before close your account (or).\n 2.Transfer your money from this account to another account...(or)\n 3. your are not a account holder");
			req.getRequestDispatcher("Closefailed.jsp").forward(req, res);
			
		}
	}

}
