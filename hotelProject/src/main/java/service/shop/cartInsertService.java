package service.shop;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;

import command.shop.shopCommand;
import model.dto.member.AuthInfo;
import model.dto.shop.shopDTO;
import repository.shop.ShopRepository;

public class cartInsertService {
	@Autowired
	ShopRepository shopRepository;

	public void execute(shopCommand shopcommand, HttpServletRequest request, HttpSession session) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		shopDTO dto = new shopDTO();
		dto.setGoodsPrice(shopcommand.getGoodsPrice());
		dto.setGoodsCode(shopcommand.getGoodsCode());
		dto.setGoodsName(shopcommand.getGoodsName());
		dto.setMemId(authInfo.getId());
		dto.setGoodsQty(1);
		
		
		shopRepository.insertCart(dto);
	}
}
