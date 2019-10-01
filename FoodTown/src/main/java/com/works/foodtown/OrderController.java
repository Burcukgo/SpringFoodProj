package com.works.foodtown;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import model.Product;
import model.Productorder;
import util.Util;
@Controller
public class OrderController {

		SessionFactory sf = util.HibernateUtil.getSessionFactory();
		Productorder opro= new Productorder();
		
		@RequestMapping(value = "/order", method = RequestMethod.POST)
		public String order(Model model, HttpServletRequest req
				,@RequestParam int orderqty) {
		
			opro.setOqty(orderqty);
			return Util.Ordercontrol(req, "order");//login?
		}
		
		
		@RequestMapping(value = "/order", method = RequestMethod.GET)
		public String orderget(Model model, HttpServletRequest req) {
	int pid=(int)(req.getSession().getAttribute("OrderProductId"));
			
			Session sesi = sf.openSession();
			try {
			Product pro = (Product) sesi.createQuery("from Product where pid = ?")
					.setParameter(0, pid)
					.list()
					.get(0);
			if (!pro.equals(null)) {
		
			opro.setOtitle(pro.getPtitle());
			opro.setOdesc(pro.getPdesc());
			opro.setOphoto(pro.getPphoto());
			opro.setOprice(pro.getPprice());
			
			long ordertime = System.currentTimeMillis();
			opro.setOtime(Long.toString(ordertime));
			System.out.println(opro.getOtitle());
			
			model.addAttribute("orderp", opro);
			
			
		   return Util.Ordercontrol(req, "order");//login?
			
			} else {
				model.addAttribute("error", "Böyle bir ürün yok");
			}
		} catch (Exception e) {
			System.err.println("ProductToDetailError : " + e);
			model.addAttribute("error", "Sistem hatasi olustu!");
		}
			
			return "/";
		
		}
	
}
