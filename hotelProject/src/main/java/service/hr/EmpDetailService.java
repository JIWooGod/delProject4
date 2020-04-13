package service.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.dto.hr.EmployeeDTO;
import repository.hr.EmpDetailRepository;

@Service
public class EmpDetailService {
	@Autowired
	private EmpDetailRepository empDetailRepository;
	
	public void action(Long empNo, Model model) {
		EmployeeDTO dto = new EmployeeDTO();
		dto.setEmpNo(empNo);
		dto = empDetailRepository.reposit(dto);
		if(dto.getPassState().equals("정규사원")) {
			model.addAttribute("emp",dto);
		}
		model.addAttribute("applier",dto);
	}
	public void action2(String empId, Model model) {
		EmployeeDTO dto = new EmployeeDTO();
		dto.setEmpId(empId);
		dto = empDetailRepository.reposit(dto);
		model.addAttribute("applier",dto);
	}
}