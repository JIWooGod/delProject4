package service.hr;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.validation.Errors;

import command.hr.ApplyCommand;
import model.dto.hr.EmployeeDTO;
import repository.hr.ApplyRepository;
import repository.hr.UserCheckRepository;

@Service
public class ApplyService {
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	@Autowired
	private ApplyRepository applyRepository;
	@Autowired
	private UserCheckRepository userCheckRepository;

	public void action(HttpServletRequest request, ApplyCommand applyCommand,
			Errors errors) {
		String password = bcryptPasswordEncoder.encode(applyCommand.getPw());
		String check = userCheckRepository.check(applyCommand.getId()).getId();
		
		EmployeeDTO dto = new EmployeeDTO();

		dto.setDeptNo(applyCommand.getDeptNo());
		dto.setEmpName(applyCommand.getName());
		dto.setEmpTel(applyCommand.getTel());
		dto.setEmpEmail(applyCommand.getEmail());
		dto.setEmpAddr(applyCommand.getAddr());
		dto.setEmpCarr(applyCommand.getCareer());
		dto.setEmpCerti(applyCommand.getCerti());
		if(check==null) {
			dto.setEmpId(applyCommand.getId());
		}else {
			System.out.println(":::::::아이디 중복체크 처리하셈::::::");
			//errors.rejectValue("duplicatedId", "중복된 아이디입니다.");
		}
		if(bcryptPasswordEncoder.matches(applyCommand.getRePw(), password)) {
			dto.setEmpPw(password);
		}else {
			System.out.println("::::::비밀번호 틀림 메시지+유효성검사 할 것::::::");
		}
		dto.setEmpIp(request.getRemoteAddr());

		applyRepository.applyPut(dto);
	}

	public Integer joinAction(String num, String receiver, String empId) {
		return null;
	}
}