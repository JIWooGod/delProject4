package service.member;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import command.member.MemberCommand;
import model.dto.member.MemberDTO;
import repository.member.MemberRepository;

@Service
public class MemberCreateService {
	@Autowired
	private MemberRepository memberRepository;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	public void execute(MemberCommand memberCommand, HttpServletRequest request) {
		MemberDTO dto = new MemberDTO();
		SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-DD");
		dto.setMemId(memberCommand.getUserId());
		System.out.println("비크립트 에러찾기" + memberCommand.getUserPw());
		dto.setMemPw(bCryptPasswordEncoder.encode(memberCommand.getUserPw()));
		dto.setMemName(memberCommand.getUserName());
		dto.setMemEmail(memberCommand.getUserEmail());
		dto.setMemAddr(memberCommand.getUserAddr());
		dto.setMemTel(memberCommand.getUserPh());
		dto.setMemIp(request.getRemoteAddr());
		
		memberRepository.memInsert(dto);
	}

}
