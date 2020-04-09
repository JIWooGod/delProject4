package Controller.shop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.shop.goodsListService;

@Controller
public class shopListController {
	@Autowired
	goodsListService shopListService;
	@RequestMapping("/delshop/categories")
	public String goodsList(Model model) {
		shopListService.goodsList(model);
		return "shop/categories";
	}
	//장바구니 부분 
	@RequestMapping("/delshop/cart")
	public String cartList(HttpSession session, Model model) {
		shopListService.cartList(session, model);
		return "shop/shop-Cart";
	}
	
}
