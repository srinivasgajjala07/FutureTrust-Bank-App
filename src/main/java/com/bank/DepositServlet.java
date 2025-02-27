package com.bank;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;


@SuppressWarnings("serial")
@WebServlet("/deposit")
public class DepositServlet extends HttpServlet {

	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String accno=req.getParameter("accountNumber");
		double amt=Double.parseDouble(req.getParameter("amount"));
		String pword=req.getParameter("password");

		UserBean ub=new UserBean();
		
		ub.setAccno(accno);
		ub.setDeposit(amt);
		ub.setPword(pword);
		
		int k=new DepositDAO().deposit(ub);
		if(k>0) {
			req.setAttribute("msg", "Amount deposited Sucessfully......");
			req.setAttribute("ubean", ub);
			req.getRequestDispatcher("depositSucess.jsp").forward(req, res);
		}
		else {
			req.setAttribute("err", "Transaction failed,invalid password or account number try again .....");
			req.getRequestDispatcher("failed.jsp").forward(req, res);
		     
		}
		
	}

}
