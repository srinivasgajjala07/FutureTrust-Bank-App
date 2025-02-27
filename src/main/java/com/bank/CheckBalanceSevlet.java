package com.bank;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/checkbal")
public class CheckBalanceSevlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res) throws IOException,ServletException{
		UserBean ub=new UserBean();
		
		 ub.setAccno(req.getParameter("accno"));
		 ub.setPword(req.getParameter("pword"));
		 
		double[] bal=new CheckBalDAO().checkbal(ub);
		ub.setDeposit(bal[0]);
		if(bal[1]==1.0) {
			req.setAttribute("msg","Account balnce fetched sucessful..");
			req.setAttribute("ub", ub);
			req.getRequestDispatcher("viewbal.jsp").forward(req, res);
			
		}else {
			req.setAttribute("msg", "invliad account number or password");
			req.getRequestDispatcher("balcheckfailed.jsp").forward(req, res);
		}
	}

}
