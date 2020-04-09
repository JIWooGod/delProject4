package Controller.Room;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import command.room.ReservationCommand;
import service.room.ReservationService;

@Controller
public class ReservationController {
	@Autowired
	private ReservationService reservationService;
	@RequestMapping(value = "/reservation")
	public String reservation(@RequestParam(value = "room")String roomGrade,Model model,HttpSession session)
	{
		reservationService.execute(roomGrade,model,session);
		return"room/reservation_1";
	}
	@RequestMapping("/reservationStep2")
	public String reservation2(ReservationCommand reservationCommand,Model model,HttpSession session)
	{
		reservationService.execute2(reservationCommand,model,session);
		return"room/reservation_2";
	}
	@RequestMapping("/reservationStep3")
	public String reservation3(ReservationCommand reservationCommand,Model model,HttpSession session)
	{
		reservationService.execute3(reservationCommand,model,session);
		return"room/roomSelect";
	}
	@RequestMapping("/kakaoPay")
	public String reservation4(ReservationCommand reservationCommand,Model model,HttpSession session,HttpServletRequest request)
	{
		reservationService.execute4(reservationCommand,model,session,request);
		
		return"room/kakao";
	}
	@RequestMapping("/reservationOk")
	public String reservation5(@RequestParam("id")String userId ,ReservationCommand reservationCommand,Model model,HttpSession session,HttpServletRequest request)
	{
		reservationService.execute5(userId,reservationCommand,model,session,request);
		
		return"room/reservationSuccess";
	}
	@RequestMapping("/ajaxRoom" )
	public String reservation6(@RequestParam("n")String roomLoc,@RequestParam("rmbkChkIn")String chkIn,@RequestParam("rmbkChkOut")String chkOut,@RequestParam("rmbkView")String roomView,@RequestParam("rmbkGrade")String roomGrade,@RequestParam("rmbkBed")String roomBed,Model model)
	{
		reservationService.ajaxExecute(model,roomLoc,chkIn,chkOut,roomGrade,roomBed,roomView);
		return"room/ajaxRoom";
	}
	

}
