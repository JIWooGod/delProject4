package Controller.shop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.shop.cartService;
import repository.shop.ShopRepository;

@Controller
public class shopDelCartController {
	@Autowired
	ShopRepository shopRepository;
	@Autowired
	cartService cartService;
	
	@RequestMapping("/delshop/cartDel")
	public String delCart(HttpSession session) {
		shopRepository.delcart(session);
		return "redirect:/delshop/cart";
	}
	@RequestMapping("/delshop/cartOneDel")
	public String oneDel(@RequestParam(value = "code")String goodsCode, HttpSession session) {
		cartService.delOne(goodsCode, session);
		return "redirect:/delshop/cart";
		
	}
}
