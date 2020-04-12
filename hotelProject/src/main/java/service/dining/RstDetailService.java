package service.dining;

import java.util.List;

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

	//레스토랑예약 기본정보입력후 실행
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

	//기본정보입력 후 메뉴선택
	public void resStep3(Long rstNo, Model model, dReservationCommand dreservationCommand) {
		dReservationDTO dto = new dReservationDTO();
		
		dto.setMenuNo(dreservationCommand.getMenuNo());
		dto.setRstNo(rstNo);
		dReservationDTO dto2 = diningRepository.resMenuOneSelect(dto);
		
		dto.setEmailVal1(dreservationCommand.getEmailVal1());
		dto.setEmailVal2(dreservationCommand.getEmailVal2());
		dto.setFromdate(dreservationCommand.getFromdate());
		dto.setResCnt(dreservationCommand.getResCnt());
		dto.setResMans(dreservationCommand.getResMans());
		dto.setResName(dreservationCommand.getResName());
		dto.setResTel(dreservationCommand.getResTel());
		dto.setResTime(dreservationCommand.getResTime());
		model.addAttribute("res2", dto);
		model.addAttribute("resMenu", dto2);
	}

	public void resStep4(Long rstNo, Model model, dReservationCommand dreservationCommand) {
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
		dto.setMenuNo(dreservationCommand.getMenuNo());
		dto.setRstTbl(dreservationCommand.getRstTbl());
		dto.setMenuName(dreservationCommand.getMenuName());
		dto.setMenuPrice(dreservationCommand.getMenuPrice());
		dto.setMenuImg(dreservationCommand.getMenuImg());
		model.addAttribute("res3", dto);
	}
	
}















