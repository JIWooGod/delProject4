package Controller.shop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.shop.goodsListService;
@Controller
public class shopCateController {
	@Autowired
	goodsListService goodsListService;
	@RequestMapping("/delshop/categories2")
	public String goodsDetail(@RequestParam(value = "cate")String goodsCategory ,Model model, HttpSession session) {
		goodsListService.goodsCateList(model, session, goodsCategory);
		return "shop/categories2";
	}
}

