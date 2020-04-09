package service.hr;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.hr.Apply2Command;
import model.dto.hr.TeacherDTO;
import repository.hr.TchModifyRepository;

@Service
public class TchModifyService {
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;
	@Autowired
	private TchModifyRepository tchModifyRepository;
	
	public Integer action(Long teachNo, Apply2Command command, Model model,
			HttpSession session) {
		//AuthInfoHR auth = ((AuthInfoHr)session.getAttribute("authHR")).getAuthId;
		String password = bcryptPasswordEncoder.encode(command.getPw());
		TeacherDTO dto = new TeacherDTO();
		if(bcryptPasswordEncoder.matches(command.getRePw(), password)) {
			dto.setTeachPw(password);
		}else {
			System.out.println("::::::비밀번호 틀림 메시지+유효성검사 할 것::::::");
		}
		dto.setTeachNo(teachNo);
		dto.setTeachName(command.getName());
		dto.setTeachTel(command.getTel());
		dto.setTeachEmail(command.getEmail());
		dto.setTeachAddr(command.getAddr());
		dto.setTeachCarr(command.getCareer());
		dto.setTeachCerti(command.getCerti());
		
		Integer i = tchModifyRepository.reposit(dto);
		model.addAttribute("tch",dto);
		return i;
	}
}
