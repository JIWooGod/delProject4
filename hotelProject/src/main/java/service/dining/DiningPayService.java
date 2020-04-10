package service.dining;

import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import command.dining.dReservationCommand;
import model.dto.dining.DiningPayDTO;
import model.dto.dining.dReservationDTO;
import model.dto.member.AuthInfo;
import repository.dining.DiningRepository;

@Service
public class DiningPayService {
	
	@Autowired
	private DiningRepository diningRepository;
	
	public void execute(dReservationCommand dReservationCommand, HttpServletRequest request, HttpSession session) {
		DiningPayDTO pay = new DiningPayDTO();
		
		SimpleDateFormat  formatter = new SimpleDateFormat("MMddhhmmss");
	    String payNo =  formatter.format(new Date());
		
		pay.setPayNo((Integer.parseInt(payNo)));
		pay.setPayPrice(dReservationCommand.getMenuPrice());
		pay.setPayMtd("KaKaoPay");
		pay.setPayWho("dining");
		diningRepository.insertPayDining(pay);
		
		
		dReservationDTO dto = new dReservationDTO();
		dto.setRstNo(dReservationCommand.getRstNo());
		dto.setFromdate(dReservationCommand.getFromdate());
		dto.setResTime(dReservationCommand.getResTime());
		dto.setResMans(dReservationCommand.getResMans());
		dto.setResName(dReservationCommand.getResName());
		dto.setResTel(dReservationCommand.getResTel());
		dto.setEmailVal1(dReservationCommand.getEmailVal1());
		dto.setEmailVal2(dReservationCommand.getEmailVal2());
		dto.setResCnt(dReservationCommand.getResCnt());
		dto.setMenuName(dReservationCommand.getMenuName());
		dto.setMenuPrice(dReservationCommand.getMenuPrice());
		dto.setRstTbl(dReservationCommand.getRstTbl());
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		dto.setMemId(authInfo.getId());
		dto.setPayNo((Integer.parseInt(payNo)));
		System.out.println("테스트 준비");
		System.out.println((Integer.parseInt(payNo)));
		System.out.println(authInfo.getId());
		System.out.println(dReservationCommand.getRstNo());
		System.out.println(dReservationCommand.getFromdate());
		System.out.println(dReservationCommand.getResTime());
		System.out.println(dReservationCommand.getResMans());
		System.out.println(dReservationCommand.getResName());
		System.out.println(dReservationCommand.getResTel());
		System.out.println(dReservationCommand.getResCnt());
		System.out.println(dReservationCommand.getMenuName());
		System.out.println(dReservationCommand.getRstTbl());
		diningRepository.insertDiningRes(dto);
		request.setAttribute("totalPrice", dReservationCommand.getMenuPrice());
	}

}








