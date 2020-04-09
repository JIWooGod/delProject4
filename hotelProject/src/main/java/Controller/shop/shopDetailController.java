package Controller.shop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.shop.goodsDetailService;


	@Controller
public class shopDetailController {
	@Autowired
	goodsDetailService goodsDetailService;
	@RequestMapping("/delshop/product")
	public String goodsDetail(@RequestParam(value = "code")String goodsCode ,Model model, HttpSession session) {
		goodsDetailService.goodsDetail(model, session, goodsCode);
		return "shop/product-page";
	}
}
