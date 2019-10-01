package com.works.foodtown;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import model.Category;
import model.Product;


@Controller
public class DetailController {
	
	
	SessionFactory sf = util.HibernateUtil.getSessionFactory();
	
	
	@RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
	public String home(Model model, @PathVariable int id, HttpServletRequest req) {
		
		model.addAttribute("categorydata", listCategory());
		model.addAttribute("product", listProduct(id));
		// session create 
		req.getSession().setAttribute("OrderProductId", id);
		
		return "detail";
	}
	
	public Product listProduct(int id){
		Session sesi = sf.openSession();
		Product pro = (Product) sesi.createQuery("from Product where pid = ?")
				.setParameter(0, id)
				.list()
				.get(0);
		return pro;	
	}
	
	public List<Category> listCategory(){
		Session sesi = sf.openSession();
		List<Category> cls = sesi.createQuery("from Category order by cid")
				.list();
		
		return cls;

	}

}
