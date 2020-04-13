package Controller.hr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ContractEmpController {
	@RequestMapping("/personnel/contract/{num}")
	public String contract(@PathVariable(value="num") Long num) {
		
		return "manager/hr/contractEmp";
	}
}