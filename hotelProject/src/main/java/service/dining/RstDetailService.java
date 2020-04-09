package service.dining;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.dining.dReservationCommand;
import model.dto.dining.RstDTO;
import model.dto.dining.dReservationDTO;
import repository.dining.DiningRepository;

@Service
public class RstDetailService {
	@Autowired
	private DiningRepository diningRepository;
	
	public void execute(Long rstNo, Model model) {
		RstDTO dto = diningRepository.selectRst(rstNo);
		model.addAttribute("rst", dto);
	}

	public void resStep2(Long rstNo, Model model, dReservationCommand dreservationCommand) {
		dReservationDTO dto = new dReservationDTO();
		dto.setEmailVal1(dreservationCommand.getEmailVal1());
		dto.setEmailVal2(dreservationCommand.getEmailVal2());
		dto.setFromdate(dreservationCommand.getFromdate());
		dto.setResCnt(dreservationCommand.getResCnt());
		dto.setResMans(dreservationCommand.getResMans());
		dto.setResName(dreservationCommand.getResName());
		dto.setResTel(dreservationCommand.getResTel());
		dto.setResTime(dreservationCommand.getResTime());
		dto.setRstNo(rstNo);
		model.addAttribute("res", dto);
	}
	
}
