package Controller.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import command.hr.EmpContractCommand;
import service.hr.EmpContractSerivce;
import service.hr.EmpDetailService;
import service.hr.Pass1stEmpService;

@Controller
public class ContractEmpController {
	@Autowired
	private EmpDetailService empDetailService;
	@Autowired
	private EmpContractSerivce empContractService;
	@Autowired
	private Pass1stEmpService pass1stEmpService;
	
	@RequestMapping("/personnel/contract/{num}")
	public String contract(@PathVariable(value="num") Long empNo,
			Model model, EmpContractCommand empContractCommand) {
		empDetailService.action(empNo, model);
		empContractService.action(empNo, model);
		return "manager/hr/contractEmp";
	}
	@RequestMapping(value="/personnel/empContracting", method = RequestMethod.POST)
	public String contracting(EmpContractCommand empCommand) {
		pass1stEmpService.action(empCommand.getEmpNo(), "정규사원");
		empContractService.action2(empCommand);
		return "redirect:/main";
	}
	@RequestMapping("/personnel/employment/{empNo}")
	public String paper(@PathVariable(value="empNo") Long empNo,
			Model model) {
		empDetailService.action(empNo, model);
		empContractService.action3(empNo, model);
		return "manager/hr/contractDetail";
	}
}