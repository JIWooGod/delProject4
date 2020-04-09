package service.room;


import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.room.ReservationCommand;
import model.dto.member.AuthInfo;
import model.dto.pay.PayDTO;
import model.dto.room.ReservationDTO;
import model.dto.room.RoomDTO;
import repository.room.RoomRepository;

@Service
public class ReservationService {
	@Autowired
	private RoomRepository roomRepository;
	public void execute(String roomGrade,Model model,HttpSession session)
	{
		RoomDTO dto = roomRepository.roomReservation(roomGrade);
		session.setAttribute("room", dto);
		
	}
	public void execute2(ReservationCommand reservationCommand,Model model,HttpSession session)
	{
		ReservationDTO dto = new ReservationDTO();
		dto.setRmbkPeople(reservationCommand.getPeople());
		dto.setRmbkChkIn(new Timestamp(reservationCommand.getFromdate().getTime()));
		dto.setRmbkChkOut(new Timestamp(reservationCommand.getTodate().getTime()));
		dto.setRoomDays(reservationCommand.getDays());
		dto.setRoomCount(reservationCommand.getRoomCount());
		
		session.setAttribute("reservation",dto);
	}
	public void execute3(ReservationCommand reservationCommand,Model model,HttpSession session)
	{
		ReservationDTO dto = new ReservationDTO();
		String userPh = reservationCommand.getUserPh1()+reservationCommand.getUserPh2()+reservationCommand.getUserPh3();
		dto.setUserName(reservationCommand.getUserName());
		dto.setUserPh(userPh);
		dto.setRmbkOption(reservationCommand.getRmbkContent());
		dto.setRoomView(reservationCommand.getRoomView());
		dto.setRoomBed(reservationCommand.getRoomBed());
		dto.setDndMode(reservationCommand.getDndMode());
		dto.setNoFeader(reservationCommand.getNoFeader());
		dto.setUncomFort(reservationCommand.getUncomfort());
		dto.setRmbkPeople(reservationCommand.getPeople());
		dto.setRmbkChkIn(new Timestamp(reservationCommand.getFromdate().getTime()));
		dto.setRmbkChkOut(new Timestamp(reservationCommand.getTodate().getTime()));
		dto.setRoomDays(reservationCommand.getDays());
		dto.setRoomCount(reservationCommand.getRoomCount());
		session.setAttribute("reservation",dto);
		
		RoomDTO room = roomRepository.selectRoom(dto);
		model.addAttribute("room",room);
		
	}
	public void ajaxExecute(Model model,String roomLoc) {
		List<RoomDTO> rooms = roomRepository.selectRooms(null);
		System.out.println(rooms.size());
		String ho= "1404";
		model.addAttribute("ho", ho);
		model.addAttribute("roomLoc", roomLoc);
		model.addAttribute("rooms",rooms);
	}
	
	public void execute4(ReservationCommand reservationCommand,Model model,HttpSession session,HttpServletRequest request)
	{
		
		PayDTO pay = new PayDTO();
		SimpleDateFormat  formatter = new SimpleDateFormat("MMddhhmmss");
		String payNo =  formatter.format(new Date());
		
		pay.setPayNo((Integer.parseInt(payNo)));
		pay.setPayPrice(reservationCommand.getRoomPrice());
		pay.setPayMtd("kakaoPay");
		pay.setPayWho("room");
		
		roomRepository.insertPay(pay);
		
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		ReservationDTO dto = new ReservationDTO();
		
		dto.setMemId(authInfo.getId());
		dto.setDndMode(reservationCommand.getDndMode());
		dto.setNoFeader(reservationCommand.getNoFeader());
		dto.setUncomFort(reservationCommand.getUncomfort());
		dto.setRmbkChkIn(new Timestamp(reservationCommand.getFromdate().getTime()));
		dto.setRmbkChkOut(new Timestamp(reservationCommand.getTodate().getTime()));
		dto.setUserPh(reservationCommand.getUserPh1());
		dto.setUserName(reservationCommand.getUserName());
		dto.setRmbkPeople(reservationCommand.getPeople());
		dto.setRoomGrade(reservationCommand.getRoomGrade());
		dto.setRoomBed(reservationCommand.getRoomBed());
		dto.setRoomSelect(reservationCommand.getRoomSelect());
		dto.setRmbkOption(reservationCommand.getRmbkContent());
		dto.setRmbkPrice(reservationCommand.getRoomPrice());
		dto.setPayNo((Integer.parseInt(payNo)));
		dto.setRoomNo((Integer.parseInt(reservationCommand.getRoomSelect())));
		roomRepository.insertReservation(dto);
		
		request.setAttribute("totalPrice",dto.getRmbkPrice());
		request.setAttribute("userId",authInfo.getId() );
		
	}
	public void execute5(String userId,ReservationCommand reservationCommand,Model model,HttpSession session,HttpServletRequest request)
	{
		ReservationDTO dto = roomRepository.selectReservationOk(userId);		
		model.addAttribute("reservationOk",dto);	
	}
}
