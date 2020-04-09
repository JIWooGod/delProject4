package service.dining;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.dto.dining.Menu2DTO;
import model.dto.dining.Menu3DTO;
import model.dto.dining.MenuDTO;
import repository.dining.DiningRepository;

@Service
public class MgMenuSelectService {
	@Autowired
	private DiningRepository diningRepository;
	public void execute(Model model) {
		// 메뉴판에서 나오는 메뉴리스트 & 관리자 메뉴리스트
		List<MenuDTO> list = diningRepository.menu1Select();
		model.addAttribute("gwoong", list);
		
		List<Menu2DTO> list2 = diningRepository.menu2Select();
		model.addAttribute("dragon", list2);
		
		List<Menu3DTO> list3 = diningRepository.menu3Select();
		model.addAttribute("deluna", list3);
	}

}