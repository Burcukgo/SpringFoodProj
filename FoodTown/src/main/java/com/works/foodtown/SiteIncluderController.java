package com.works.foodtown;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
@Controller
@RequestMapping("/")
public class SiteIncluderController {

	


	// css
	@RequestMapping(value = "/css", method = RequestMethod.GET)
	public String css() {
		return "inc/css";
	}

	// js
	@RequestMapping(value = "/js", method = RequestMethod.GET)
	public String js() {
		return "inc/js";
	}
	
	// footer
	@RequestMapping(value = "/footer", method = RequestMethod.GET)
	public String footer() {
		return "inc/footer";
	}
	
    //customerComments
	@RequestMapping(value = "/customerComments", method = RequestMethod.GET)
	public String customerComents() {
		return "inc/customerComments";
	}
	
	
	// header
		@RequestMapping(value = "/header", method = RequestMethod.GET)
		public String header() {
			return "inc/header";
		}
		
		// section
				@RequestMapping(value = "/section", method = RequestMethod.GET)
				public String section() {
					return "inc/section";
				}
	
}
