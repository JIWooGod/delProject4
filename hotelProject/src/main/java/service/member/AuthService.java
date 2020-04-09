package service.member;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import command.member.LoginCommand;
import model.dto.member.AuthInfo;
import model.dto.member.MemberDTO;
import repository.member.MemberRepository;

@Service
public class AuthService {
	@Autowired
	private MemberRepository memberRepository;

	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	private AuthInfo authInfo;

	public String execute(LoginCommand loginCommand, HttpSession session) {
		String result = null;
		MemberDTO dto = new MemberDTO();
		dto.setMemId(loginCommand.getId());
		dto = memberRepository.chk(dto);

		//로그인 실패
		if(dto == null) {
			result = "0";
			return result;

		//로그인 성공
		} else {
			if(bcryptPasswordEncoder.matches(loginCommand.getPw(), dto.getMemPw())) {
				authInfo = new AuthInfo(dto.getMemId(), dto.getMemEmail(), dto.getMemName(), dto.getMemPw(), dto.getMemTel(), dto.getMemAddr(), dto.getMemNo());
				session.setAttribute("authInfo", authInfo);
				result = "1";
				return result;
			}
			result = "0";
			return result;
		}
	}

}














