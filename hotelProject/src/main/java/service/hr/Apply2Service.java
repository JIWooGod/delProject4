package service.hr;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;

import command.hr.Apply2Command;
import model.dto.hr.TeacherDTO;
import model.dto.member.AuthInfo;
import repository.hr.ApplyRepository;
import repository.hr.UserCheckRepository;

@Service
public class Apply2Service {
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	@Autowired
	private ApplyRepository applyRepository;
	@Autowired
	private UserCheckRepository userCheckRepository;

	public void action(HttpServletRequest request, Apply2Command applyCommand,
			Errors errors) {
		String password = bcryptPasswordEncoder.encode(applyCommand.getPw());
		AuthInfo check = userCheckRepository.check(applyCommand.getId());
		
		TeacherDTO dto = new TeacherDTO();

		if(check==null) {
			dto.setTeachId(applyCommand.getId());
		}else {
			System.out.println(":::::::아이디 중복체크 처리하셈::::::");
			//errors.rejectValue("duplicatedId", "중복된 아이디입니다.");
		}
		if(bcryptPasswordEncoder.matches(applyCommand.getRePw(), password)) {
			dto.setTeachPw(password);
		}else {
			System.out.println("::::::비밀번호 틀림 메시지+유효성 검사하셈::::::");
		}
		dto.setTeachName(applyCommand.getName());
		dto.setTeachTel(applyCommand.getTel());
		dto.setTeachEmail(applyCommand.getEmail());
		dto.setTeachAddr(applyCommand.getAddr());
		dto.setTeachCarr(applyCommand.getCareer());
		dto.setTeachCerti(applyCommand.getCerti());
		dto.setTeachViol(applyCommand.getViolate());
		dto.setTeachIp(request.getRemoteAddr());

		applyRepository.applyPut2(dto);
	}
}