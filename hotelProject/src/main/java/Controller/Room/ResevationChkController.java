package Controller.Room;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import service.room.ReservationChkService;
@Controller
public class ResevationChkController {
	@Autowired
	private ReservationChkService reservationChkService;
	
	@RequestMapping(value = "/roomReservation")
	public String reservation(@RequestParam(value = "id")String userId,Model model,HttpSession session)
	{
		reservationChkService.execute(userId,model,session);
		return "room/MyReservation";
	}
	
	@RequestMapping(value = "/reservationDetail")
	public String reservation2(@RequestParam(value = "no")String rmbkNo,Model model,HttpSession session)
	{
		reservationChkService.execute2(rmbkNo,model,session);
		return "room/ReservationDetail";
	}
	@RequestMapping(value = "/reservationDelete")
	public String reservation3(@RequestParam(value = "id")String userId,@RequestParam(value = "userPh")String userPh,@RequestParam(value = "no")String rmbkNo,Model model,HttpSession session)
	{
		reservationChkService.execute3(rmbkNo,userPh,model,session);
		return "redirect:/roomReservation?id="+userId;
	}
	@RequestMapping(value = "/reservationList")
	public String reservation4(Model model,HttpSession session)
	{
		reservationChkService.execute4(model,session);
		return "room/reservationList";
	}
	@RequestMapping(value = "/reservationDetailManager")
	public String reservation5(@RequestParam(value = "no")String rmbkNo,Model model,HttpSession session)
	{
		reservationChkService.execute2(rmbkNo,model,session);
		return "room/ReservationDetailManager";
	}
}
