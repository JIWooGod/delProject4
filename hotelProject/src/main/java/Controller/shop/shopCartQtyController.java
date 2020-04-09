package Controller.shop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.shop.cartService;

@Controller

public class shopCartQtyController {
	@Autowired
	cartService cartService;
	@RequestMapping("/delshop/cartQtyUp")
	public String qtyUp(@RequestParam(value = "name")String goodsCode ,Model model, HttpSession session) {
		cartService.qtyUp(model, session, goodsCode);
		return "redirect:/delshop/cart";
	}
	
	@RequestMapping("/delshop/cartQtyDown")
	public String qtyDown(@RequestParam(value = "name")String goodsCode1 ,Model model, HttpSession session) {
		System.out.println(goodsCode1);
		String [] spl = goodsCode1.split("-");
		String sQty = spl[1];
		int qty = Integer.parseInt(sQty);
		String goodsCode = spl[0];
		
		if(qty <= 1) {
			return "redirect:/delshop/cart";
		}else {
			cartService.qtyDown(model, session, goodsCode);
			return "redirect:/delshop/cart";
		}
	}
}
