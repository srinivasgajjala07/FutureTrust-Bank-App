package com.bank;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/withdraw")
public class WithdrawServlet extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException {
		
		String accno=req.getParameter("accountNumber");
		double amt=Double.parseDouble(req.getParameter("amount"));
		String pword=req.getParameter("password");
		
		UserBean wb=new UserBean();
		wb.setAccno(accno);
		wb.setDeposit(amt);
		wb.setPword(pword);
		
		int w=new WithdrawDAO().withdraw(wb);
		
		if(w>0) {
			req.setAttribute("msg","withdrawal sucessful");
			req.setAttribute("ubean", wb);
			req.getRequestDispatcher("WithdrawSucess.jsp").forward(req, res);
		}else {
			req.setAttribute("err", "Transaction failed,invalid password or account number (or) insufficient balance try again .....");
			req.getRequestDispatcher("withdrawfail.jsp").forward(req, res);
		}
		
		
	}

}
