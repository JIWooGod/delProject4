package Controller.shop;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.shop.shopChkCommand;
import command.shop.shopCommand;
import service.shop.goodsInsertService;
import service.shop.goodsListService;

@Controller
@RequestMapping(value = "/delshop/kakaoPay")
public class shopKakaoController {
	@Autowired
	goodsListService shopListService;
	
	@RequestMapping(method = RequestMethod.GET)
	public String insert() {
		
		return "shop/kakao";
	}
	@RequestMapping(method = RequestMethod.POST)
		public String kakaoPay(shopChkCommand cCommand,Model model, HttpSession session) {
			System.out.println("카카오컨트롤러 들어옴");
			shopListService.kakaoPay(cCommand,model,session);
			return "shop/kakao";
	}

}
