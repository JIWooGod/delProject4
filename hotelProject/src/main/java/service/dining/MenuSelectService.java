package service.dining;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.dto.dining.MenuDTO;
import repository.dining.DiningRepository;

@Service
public class MenuSelectService {
	@Autowired
	private DiningRepository diningRepository;
	public void execute(Long rstNo, Model model) {
		// 메뉴판에서 나오는 메뉴리스트
		List<MenuDTO> list = diningRepository.menuSelect(rstNo);
		model.addAttribute("menus", list);
	}

}