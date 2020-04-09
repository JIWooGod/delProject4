package service.dining;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.dto.dining.SeatPlaceDTO;
import repository.dining.DiningRepository;

public class DiningTblListService {
	@Autowired
	private DiningRepository reservationRepository;
	public void execute(Model model) {
		List<SeatPlaceDTO> list1 = reservationRepository.seatPlace1();
		model.addAttribute("gwoong", list1);
		
		List<SeatPlaceDTO> list2 = reservationRepository.seatPlace2();
		model.addAttribute("dragon", list2);
		
		List<SeatPlaceDTO> list3 = reservationRepository.seatPlace3();
		model.addAttribute("deluna", list3);
	}
}
