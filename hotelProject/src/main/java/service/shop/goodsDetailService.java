package service.shop;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.dto.room.RoomDTO;
import model.dto.shop.shopDTO;
import repository.shop.ShopRepository;

@Service
public class goodsDetailService {
	@Autowired
	private ShopRepository  shopRepository;
	
	public void goodsDetail(Model model, HttpSession session, String goodsCode) {
		shopDTO dto = shopRepository.goodsDetail(goodsCode);
		session.setAttribute("goodsD", dto);
	}


	
}
