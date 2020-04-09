package service.hr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.dto.hr.TeacherDTO;
import repository.hr.TchDetailRepository;

@Service
public class TchDetailService {
	@Autowired
	private TchDetailRepository tchDetailRepository;
	
	public void action(Long tchNo, Model model) {
		TeacherDTO dto = new TeacherDTO();
		dto.setTeachNo(tchNo);
		dto = tchDetailRepository.reposit(dto);
		model.addAttribute("applier",dto);
	}
}