package service.shop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.dto.member.AuthInfo;
import model.dto.shop.cartDTO;
import repository.shop.ShopRepository;

public class cartService {
	@Autowired
	ShopRepository shopRepository;
	public void qtyUp(Model model, HttpSession session, String goodsCode) {
		cartDTO dto = new cartDTO();
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		String memId = authInfo.getId();
		dto.setMemId(memId);
		dto.setGoodsCode(goodsCode);
		
		shopRepository.gtyUp(dto);
	}
	public void qtyDown(Model model, HttpSession session, String goodsCode) {
		cartDTO dto = new cartDTO();
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		String memId = authInfo.getId();
		dto.setMemId(memId);
		dto.setGoodsCode(goodsCode);
		
		shopRepository.gtyDown(dto);
		
	}

}
