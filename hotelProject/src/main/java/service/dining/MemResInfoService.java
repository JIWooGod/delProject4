package service.dining;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.dto.dining.dReservationDTO;
import model.dto.member.AuthInfo;
import repository.dining.DiningRepository;

@Service
public class MemResInfoService {

	@Autowired
	private DiningRepository diningRepository;
	
	public void execute(HttpSession session, Model model) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		System.out.println("체크111 = " + authInfo.getId());
		List<dReservationDTO> list = diningRepository.memResChk(authInfo.getId());
		model.addAttribute("resList", list);
	}

	public void mgResList(Model model) {
		List<dReservationDTO> list = diningRepository.mgDResList();
		model.addAttribute("lists", list);
	}
	
}
