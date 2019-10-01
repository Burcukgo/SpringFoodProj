package com.works.foodtown;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.Customer;
import util.Util;


@Controller
public class CustomerLoginController {
	
	SessionFactory sf = util.HibernateUtil.getSessionFactory();
	
	@RequestMapping(value = "/customerlogin", method = RequestMethod.GET)
	public String login() {
		return "customerlogin";
	}


	@RequestMapping(value = "/customerlogin", method = RequestMethod.POST)
	public String login( 
			Customer cst, 
			Model model, 
			HttpServletRequest req, 
			@RequestParam(defaultValue = "off") String cstremember,
			HttpServletResponse res) {
		
		Session sesi = sf.openSession();
		
		try {
			Customer cus= (Customer) sesi.createQuery("from Customer where cstmail = ? and cstpassword = ? ")
					.setParameter(0, cst.getCstmail())
					.setParameter(1, Util.MD5(cst.getCstpassword()))
					.list()
					.get(0);
			
		
			if (!cus.equals(null)) {
				
				req.getSession().setAttribute("custid", cus);
				
				// remember check ?
				if(cstremember.equals("on")) {
					Cookie cookie = new Cookie("customer_cookie", ""+cus.getCstid());
					cookie.setMaxAge(60*60*24);
					res.addCookie(cookie);
				}
			return "redirect:/order";
			
			} else {
				model.addAttribute("error", "Kullanýcý adý yada þifre hatalý");
			}
		} catch (Exception e) {
			System.err.println("login error : " + e);
			model.addAttribute("error", "Sistem hatasÄ± oluÅŸtu!");
		}
		return "redirect:/customerlogin";
	}
	
	
	// exit
	@RequestMapping(value = "/exit", method = RequestMethod.GET)
	public String exit(HttpServletRequest req, HttpServletResponse res) {
		
		Cookie cookie = new Cookie("customer_cookie", "");
		cookie.setMaxAge(0);
		res.addCookie(cookie);
		
		// all sessions remove
		req.getSession().invalidate();
		// single session remove
		req.getSession().removeAttribute("custid");
		return "redirect:/customerlogin";
	}
	
	

}


