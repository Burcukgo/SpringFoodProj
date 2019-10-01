package com.works.foodtown;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Category;
import model.Product;

@Controller
public class HomeController {
	
	SessionFactory sf = util.HibernateUtil.getSessionFactory();
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		
		//model.addAttribute("categorydata", listCategory());
		model.addAttribute("productdata", listProduct());
		
		return "home";
	}
	
	public List<Product> listProduct(){
		Session sesi = sf.openSession();
		List<Product> pls = sesi.createQuery("from Product order by pid")
				.list();
		
		return pls;

	}
	
	public List<Category> listCategory(){
		Session sesi = sf.openSession();
		List<Category> cls = sesi.createQuery("from Category order by cid")
				.list();
		
		return cls;

	}
	
}
