package service.dining;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.dto.dining.SeatPlaceDTO;
import repository.dining.DiningRepository;

@Service
public class TblDeleteListService {

	@Autowired
	private DiningRepository diningRepository;
	public void execute(Long rstNo, Model model) {
		List<SeatPlaceDTO> dto = diningRepository.tblDeleteList(rstNo);
		model.addAttribute("seats", dto);
	}

}
