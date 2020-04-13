package service.hr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.hr.EmpContractCommand;
import model.dto.hr.EmployeeDTO;
import model.dto.hr.EmploymentDTO;
import model.dto.hr.JobPositionDTO;
import repository.hr.EmpDetailRepository;
import repository.hr.ViewJobRepository;

@Service
public class EmpContractSerivce {
	@Autowired
	private EmpDetailRepository empDetailRepository;
	@Autowired
	private ViewJobRepository viewJobRepository;
	
	public void action(Long empNo, Model model) {
		EmployeeDTO emp = new EmployeeDTO();
		EmploymentDTO dto = new EmploymentDTO();
		dto.setEmpNo(empNo);
		emp.setEmpNo(empNo);
		emp = empDetailRepository.reposit(emp);
		//emp.setPassState("정규사원");
		//empModifyRepository.reposit(emp);
		System.out.println("사원부서: "+emp.getDeptNo());
		List<JobPositionDTO> job = viewJobRepository.reposit(emp.getDeptNo());
		model.addAttribute("job",job);
	}
	public void action2(EmpContractCommand empCommand) {
		EmploymentDTO dto = new EmploymentDTO();
		dto.setEmpNo(empCommand.getEmpNo());
		dto.setPositNo(empCommand.getPosition());
		dto.setEmploymentSign(empCommand.getImage());
		viewJobRepository.reposit2(dto);
	}
	public void action3(Long empNo, Model model) {
		EmploymentDTO dto = new EmploymentDTO();
		dto.setEmpNo(empNo);
		viewJobRepository.reposit3(dto);
		model.addAttribute("sign",dto);
	}
}
