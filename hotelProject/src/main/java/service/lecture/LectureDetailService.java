package service.lecture;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import model.dto.hr.SubjectDTO;
import repository.lecture.LectureDetailRepository;

@Service
public class LectureDetailService {
	@Autowired
	LectureDetailRepository lectureDetailRepository;
	
	public void action(Long subjNo, Model model) {
		SubjectDTO dto = new SubjectDTO();
		dto.setSubjNo(subjNo);
		dto = lectureDetailRepository.reposit(dto);
		
		String extension = "mp4";
		
		System.out.println("상세보기 페이지 파일명: "+dto.getSubjStore());
		//재생시간 insert
		model.addAttribute("list", dto);
		model.addAttribute("extension",extension);
	}
}
