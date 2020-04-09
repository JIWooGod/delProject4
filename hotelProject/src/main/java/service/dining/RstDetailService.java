package service.dining;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.dto.dining.RstDTO;
import repository.dining.DiningRepository;

@Service
public class RstDetailService {
	@Autowired
	private DiningRepository diningRepository;
	
	public void execute(Long rstNo, Model model) {
		RstDTO dto = diningRepository.selectRst(rstNo);
		model.addAttribute("rst", dto);
	}
	
}
