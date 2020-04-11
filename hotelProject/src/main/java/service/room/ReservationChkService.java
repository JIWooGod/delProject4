package service.room;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;

import Controller.Room.SmsSend;
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
	public void execute3(String rmbkNo,String userPh,Model model,HttpSession session) 
	{
		roomRepository.ReservationDelete(rmbkNo);
		SmsSend sms = new SmsSend();
		String textMassage = "호텔 델루나의 객실 예약이 정상적으로 취소되었습니다.";
		sms.smsSend(userPh, textMassage);
	}
	public void execute4(Model model,HttpSession session) 
	{
		List<ReservationDTO> dto = roomRepository.reservationList();
		model.addAttribute("reservation",dto);
	}
	
	
}
