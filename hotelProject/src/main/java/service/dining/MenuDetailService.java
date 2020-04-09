package service.dining;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.dto.dining.MenuDTO;
import repository.dining.DiningRepository;

@Service
public class MenuDetailService {
	@Autowired
	private DiningRepository diningRepository;
	
	public void menuOneSelect(Long menuNo, Long rstNo, Model model) {
		MenuDTO dto = new MenuDTO();
		dto.setMenuNo(menuNo);
		dto.setRstNo(rstNo);
		dto = diningRepository.menuOneSelect(dto);
		model.addAttribute("menus", dto);
	}

}
