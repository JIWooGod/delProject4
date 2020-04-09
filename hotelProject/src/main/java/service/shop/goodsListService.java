package service.shop;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.dto.shop.shopDTO;
import repository.shop.ShopRepository;

@Service
public class goodsListService {
	@Autowired
	ShopRepository shopRepository;
	public void goodsList(Model model) {
		List<shopDTO> list= shopRepository.goodsList();
		model.addAttribute("goodsList", list);
	}
	public void goodsCateList(Model model, HttpSession session, String goodsCategory) {
		List<shopDTO> list= shopRepository.goodsCateList(goodsCategory);
		model.addAttribute("goodsCateList", list);
	}
	
}
