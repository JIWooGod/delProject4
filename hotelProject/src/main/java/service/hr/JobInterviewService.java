package service.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import command.hr.InterviewCommand;
import model.dto.hr.EmployeeDTO;
import model.dto.hr.JobintvDTO;
import repository.hr.EmpDetailRepository;
import repository.hr.JobInterviewRepository;
import repository.hr.PassEmpRepository;

@Service
public class JobInterviewService {
	@Autowired
	private JobInterviewRepository jobInterviewRepository;
	@Autowired
	private PassEmpRepository passEmpRepository;
	
	public void action(InterviewCommand command, Model model) {
		String seq = jobInterviewRepository.repositSeq();
		String num = String.valueOf(command.getApplierNo()) + seq;
		
		JobintvDTO dto = new JobintvDTO();
		
		dto.setJobintvNo(Long.parseLong(num));
		dto.setJobintvViewer(command.getEmpNo());
		dto.setEmpNo(command.getApplierNo());
		dto.setJobintvLang(command.getQ1st());
		dto.setJobintvServ(command.getQ2nd());
		dto.setJobintvSocial(command.getQ3rd());
		dto.setJobintvSolve(command.getQ4th());
		dto.setJobintvTask(command.getQ5th());
		
		jobInterviewRepository.reposit(dto);
		
		long score = command.getQ1st()
					+command.getQ2nd()
					+command.getQ3rd()
					+command.getQ4th()
					+command.getQ5th();
		
		if(score >= 18) {
			EmployeeDTO emp = new EmployeeDTO();
			emp.setEmpNo(command.getApplierNo());
			emp.setPassState("면접합격자");
			passEmpRepository.reposit(emp);
		}
		model.addAttribute("score",score);
	}
}