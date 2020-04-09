
package Controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class shopMainController {
	@RequestMapping("delshop/main")
	public String shopMain() {
		return "shop/shopIndex";
	}

	@RequestMapping("delshop/cart")
	public String cartMain() {
		return "shop/shop-Cart";
	}
	@RequestMapping("/delshop/sa")
	public String goodsInsert() {
		return "shop/goodsInsert";
	}
	
	
}
