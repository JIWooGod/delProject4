package Controller.shop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import Controller.Room.SmsSend;
import command.shop.shopChkCommand;
import repository.shop.ShopRepository;
import service.shop.goodsListService;

@Controller
public class shopCheckOutController {
	@Autowired
	goodsListService shopListService;
	@Autowired
	ShopRepository shopRepository;
	
	@RequestMapping("/delshop/chkOut")
	public String chkOut(@RequestParam(value = "cs")String ship ,Model model, HttpSession session) {
		System.out.println("ship = " + ship);
		
		if(ship.equals("a")) {
			shopListService.cartList(session, model);
			shopListService.memList(session, model);
			return "shop/check-Out";
		}else if(ship.equals("b")) {
			shopListService.cartList(session, model);
			shopListService.memList(session, model);
			shopListService.rbList(session,model);
			return "shop/check-Out";
		}else if(ship.equals("c"))
			shopListService.cartList(session, model);
			shopListService.memList(session, model);
			shopListService.rbList(session,model);
		return "shop/check-Out";
	}
	@RequestMapping("delshop/payChk")
	public String payChk(HttpSession session, shopChkCommand Ccommand) {
		Ccommand.getMemTel();
		SmsSend sms = new SmsSend();
		System.out.println("연락처" + Ccommand.getMemTel());
		String phoneNum = Ccommand.getMemTel();
		String textMassage = "주문이 완료되었습니다.";
		sms.smsSend(phoneNum, textMassage);
		//shopRepository.delcart(session);
		return null;
	}
	
}
