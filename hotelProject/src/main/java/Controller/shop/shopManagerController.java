package Controller.shop;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class shopManagerController {
	
	@RequestMapping("insert")
	public String goodsInsert() {
		return "manager/shopManager/goodsInsert";
	}

}
