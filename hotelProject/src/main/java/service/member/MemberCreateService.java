package service.member;

import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.member.MemberCommand;
import model.dto.member.MemberDTO;
import repository.member.MemberRepository;

@Service
public class MemberCreateService {
	@Autowired
	private MemberRepository memberRepository;
	
	@Autowired
	private BCryptPasswordEncoder bCryptPasswordEncoder;
	
	public String execute(MemberCommand memberCommand, HttpServletRequest request) {
		String result = null;
		MemberDTO dto = new MemberDTO();
		SimpleDateFormat dt = new SimpleDateFormat("yyyy-MM-DD");
		
		dto.setMemId(memberCommand.getUserId());
		String memId = memberCommand.getUserId();
		MemberDTO chk = memberRepository.idChk(memId);
		
		//중복 있어서 가입 불가
		if(chk != null) {
			result = "0";
			return result;
			
		//중복 없음 가입 가능
		} else {
			dto.setMemId(memberCommand.getUserId());
			dto.setMemPw(bCryptPasswordEncoder.encode(memberCommand.getUserPw()));
			dto.setMemName(memberCommand.getUserName());
			dto.setMemEmail(memberCommand.getUserEmail());
			dto.setMemAddr(memberCommand.getUserAddr());
			dto.setMemTel(memberCommand.getUserPh());
			dto.setMemIp(request.getRemoteAddr());
			memberRepository.memInsert(dto);
			result = "1";
			return result;
		}
	}

	//중복 체크 service
	public String idChkPop(HttpServletRequest request, String memId) {
		String result = null;
		MemberDTO dto = memberRepository.idChk(memId);
		
		System.out.println("중복체크 아이디입력값 체크 시작");
		System.out.println("중복체크 아이디입력값 체크 값 : " + memId);
		System.out.println("체크 끝");
		
		//중복되는 id 있음 -> 가입불가
		if(dto != null) {
			result = "0";
			return result;
		}
		
		//아이디 조회결과 아무것도없음 -> 중복안되므로 가입가능
		else {
			result = "1";
			return result;
		}
	}

}




















