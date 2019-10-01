package com.works.foodtown;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Customer;
import util.HibernateUtil;
import util.Util;

@Controller
public class RegisterController {
	
	SessionFactory sf = HibernateUtil.getSessionFactory();
	
	@RequestMapping(value = "/customerregister", method = RequestMethod.GET)
	public String customerregister(Model model, HttpServletRequest req) {
		
		return"customerregister";//login olundu mu?
		
	}
	
	@RequestMapping(value = "/customerregister", method = RequestMethod.POST)
	public String register(Customer cst, HttpServletRequest req) {
		
		Session sesi = sf.openSession();
		Transaction tr = sesi.beginTransaction();
		cst.setCstpassword(Util.MD5(cst.getCstpassword()));
		int id =  (Integer) sesi.save(cst);
		System.out.println("insert id : " + id);
		tr.commit(); 

		return Util.Ordercontrol(req, "redirect:/order");
		
	}

}
