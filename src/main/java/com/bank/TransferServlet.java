package com.bank;

import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@SuppressWarnings("serial")
@WebServlet("/transfer")
public class TransferServlet extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req,HttpServletResponse res)throws ServletException,IOException{
		String haccno=req.getParameter("haccno");
		String raccno=req.getParameter("raccno");
		double amt=Double.parseDouble(req.getParameter("amt"));
		String pword=req.getParameter("pword");
		
		UserBean tub=new UserBean();
		
		tub.setAccno(haccno);
		tub.setDeposit(amt);
		tub.setPword(pword);
		int t=new TransferDAO().transfer(tub,raccno);
		if(t>0) {
			req.setAttribute("ub", tub);
			req.setAttribute("raccno",raccno);
			req.setAttribute("msg","Transaction sucessful...");
			req.getRequestDispatcher("TransferSucessful.jsp").forward(req, res);
		}else {
			req.setAttribute("msg","Transction failed...(may be insufficient balance / wrong accnos /wrong password");
			req.getRequestDispatcher("Transferfailed.jsp").forward(req, res);}	
	}
}
