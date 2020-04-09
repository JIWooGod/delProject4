package service.hr;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.dto.hr.TeacherDTO;
import repository.hr.TchListRepository;

@Service
public class TchListService {
	@Autowired
	private TchListRepository tchListRepository;
	
	public void view(Model model) {
		List<TeacherDTO> list = tchListRepository.listView();
		model.addAttribute("tch",list);
	}
}
//