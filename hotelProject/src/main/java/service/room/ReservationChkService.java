package service.room;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import model.dto.room.ReservationDTO;
import repository.room.RoomRepository;

public class ReservationChkService {
	@Autowired
	private RoomRepository roomRepository;
	public void execute(String userId,Model model,HttpSession session) 
	{
		List<ReservationDTO> dto = roomRepository.myReservation(userId);
		model.addAttribute("myReservation",dto);
	}
	public void execute2(String rmbkNo,Model model,HttpSession session) 
	{
		ReservationDTO dto = roomRepository.ReservationDetail(rmbkNo);
		model.addAttribute("detail",dto);
	}
	
}
