package Controller.hr;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
	@RequestMapping("/notice")
	public String notice() {
		return "hr/notice";
	}
}
//