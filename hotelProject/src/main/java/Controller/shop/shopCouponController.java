package Controller.shop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.shop.cartService;

@Controller
public class shopCouponController {
	@Autowired
	cartService cartService;
	@RequestMapping("/delshop/codeChk")
	public String chk(@RequestParam(value = "cd")String coupon ,Model model) {
		System.out.println("쿠폰 컨트롤러 들어옴");
		cartService.chkCoupon(coupon, model);
		return "redirect:/delshop/cart";
	}
}
