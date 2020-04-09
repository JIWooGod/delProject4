package service.dining;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import model.dto.dining.MenuDTO;
import repository.dining.DiningRepository;

@Service
public class MenuDeleteService {
	@Autowired
	private DiningRepository diningRepository;
	
	public void execute(Long menuNo, Long rstNo) {
		MenuDTO dto = new MenuDTO();
		dto.setMenuNo(menuNo);
		dto.setRstNo(rstNo);
		diningRepository.d1menuDelete(dto);
	}
	
}
