
package Controller.shop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import service.shop.goodsListService;

@Controller
public class shopMainController {
	@Autowired
	goodsListService shopListService;
	
	@RequestMapping("delshop/main")
	public String shopMain(Model model) {
		shopListService.goodsList(model);
		return "shop/shopIndex";
	}

	@RequestMapping("/delshop/sa")
	public String goodsInsert() {
		return "shop/goodsInsert";
	}
	
	
}
