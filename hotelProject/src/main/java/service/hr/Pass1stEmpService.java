package service.hr;

import org.springframework.beans.factory.annotation.Autowired;

import model.dto.hr.EmployeeDTO;
import repository.hr.PassEmpRepository;

public class Pass1stEmpService {
	@Autowired
	private PassEmpRepository passEmpRepository;
	
	public void action(Long empNo, String passState) {
		// TODO Auto-generated method stub
		EmployeeDTO dto = new EmployeeDTO();
		dto.setEmpNo(empNo);
		dto.setPassState(passState);
		passEmpRepository.reposit(dto);
	}
}
