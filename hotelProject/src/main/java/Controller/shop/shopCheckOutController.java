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
		String phoneNum = Ccommand.getMemTel();
		String name = Ccommand.getMemName();
		String gName = Ccommand.getGoodsName();
		String textMassage = name + "님 주문하신 '" + gName + "' 결제가 완료되었습니다.";
		sms.smsSend(phoneNum, textMassage);
		shopListService.insertPay(session,Ccommand);
		//shopRepository.delcart(session);
		return null;
	}
	
}
