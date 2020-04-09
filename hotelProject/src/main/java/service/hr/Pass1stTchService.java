package service.hr;

import org.springframework.beans.factory.annotation.Autowired;

import model.dto.hr.TeacherDTO;
import repository.hr.PassTchRepository;

public class Pass1stTchService {
	@Autowired
	private PassTchRepository passTchRepository;
	
	public void action(Long teachNo, String passState) {
		TeacherDTO dto = new TeacherDTO();
		dto.setTeachNo(teachNo);
		dto.setPassState(passState);
		passTchRepository.reposit(dto);
	}
}
