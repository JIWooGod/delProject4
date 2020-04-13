package service.lecture;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import model.dto.hr.SubjectDTO;
import repository.lecture.LectureDetailRepository;
import repository.lecture.LectureModifyRepository;

@Service
public class LectureModifyService {
	final String PATH = "\\manager\\lec\\video\\";
	@Autowired
	private LectureModifyRepository lectureModifyRepository;
	@Autowired
	private LectureDetailRepository lectureDetailRepository;

	public void action(Long subjNum,
					   String subjName,
					   MultipartFile mf,
					   Long subjDay,
					   String subjCnt,HttpServletRequest request,Model model) {	
		String origin = null;
		String store = null;
		String size = null;
		
		SubjectDTO dto = new SubjectDTO();
		dto.setSubjNo(subjNum);
		if(mf!=null) {		
			String realPath = request.getServletContext().getRealPath(PATH);
			origin = mf.getOriginalFilename();
			String extension = origin.substring(origin.lastIndexOf("."));
			store = UUID.randomUUID().toString()+extension;
			size = Long.toString(mf.getSize());
			dto = lectureDetailRepository.reposit(dto);
			
			System.out.println("옛날 파일 이름: "+dto.getSubjStore());
			System.out.println("새 파일 이름: "+origin);
			
			File file = new File(realPath + "\\" + dto.getSubjStore());
			file.delete();
			file = new File(realPath + "\\" + store);
			try {
				mf.transferTo(file);
			}catch (Exception e) {
				System.out.println("============파일 용량 초과============");
				e.printStackTrace();
			}
		}
		dto.setSubjFileSize(size);
		dto.setSubjStore(store);
		dto.setSubjOrigin(origin);
		dto.setSubjName(subjName);
		dto.setSubjCnt(subjCnt);
		dto.setSubjDay(subjDay);
		
		lectureModifyRepository.reposit(dto);
		model.addAttribute("dto",dto);
	}
}