package Controller.shop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import repository.shop.ShopRepository;
import service.shop.goodsListService;

@Controller
public class shopManagerController {
	@Autowired
	goodsListService goodsListService;
	@Autowired
	ShopRepository shopRepository;
	
	@RequestMapping("insert")
	public String goodsInsert() {
		return "manager/shopManager/goodsInsert";
	}
	@RequestMapping("delGoods")
	public String goodsDelete(Model model) {
		goodsListService.goodsList(model);
		return "manager/shopManager/goodsDelete";
	}
	@RequestMapping("/OneDel")
	public String oneDel(@RequestParam(value = "dcd")String goodsCode) {
		shopRepository.delOne(goodsCode);
		return "redirect:delGoods";
	}
	@RequestMapping("oderList")
	public String shipList(Model model) {
		goodsListService.shipList(model);
		return "manager/shopManager/orList";
	}
}
