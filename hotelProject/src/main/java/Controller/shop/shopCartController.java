
package Controller.shop;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.shop.shopCommand;
import service.shop.cartInsertService;
import service.shop.goodsInsertService;
	
	@Controller
	@RequestMapping(value = "/delshop/InsertCart")
public class shopCartController {
		@Autowired
		cartInsertService cartInsertService;
		
		@RequestMapping(method = RequestMethod.GET)
		public String insert() {
			
			return "shop/product-page";
		}
		@RequestMapping(method = RequestMethod.POST)
		public String insertPro(shopCommand shopcommand , HttpServletRequest request, HttpSession session) {
			cartInsertService.execute(shopcommand, request, session);
			
			return "redirect:/delshop/main";
		}

}

