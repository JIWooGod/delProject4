package service.lecture;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.hr.SubjectCommand;
import model.dto.hr.SubjectDTO;
import repository.lecture.LectureUploadingRepository;

@Service
public class LectureUploadingService {
	final String PATH = "\\manager\\lec\\video\\";
	@Autowired
	private LectureUploadingRepository lectureUploadingRepository;

	public void action(HttpServletRequest request, SubjectCommand subjectCommand) {
		//파일올리기
		MultipartFile mf = subjectCommand.getSubjVideo();
		String realPath = request.getServletContext().getRealPath(PATH);
		String origin = mf.getOriginalFilename();
		String extension = origin.substring(origin.lastIndexOf("."));
		String store = UUID.randomUUID().toString()+extension;
		String size = Long.toString(mf.getSize());
		File file = new File(realPath + "\\" + store);
		try {
			mf.transferTo(file);
		}catch (Exception e) {
			System.out.println("============파일 용량 초과============");
			e.printStackTrace();
		}

		System.out.println("실주소: "+realPath);
		System.out.println("업로드명: "+origin);
		System.out.println("저장명: "+store);
		
		SubjectDTO dto = new SubjectDTO();
		dto.setSubjName(subjectCommand.getSubjName());
		dto.setSubjCnt(subjectCommand.getSubjCnt());
		dto.setSubjGroup(subjectCommand.getSubjGroup());
		dto.setSubjDay(subjectCommand.getSubjDay());
		dto.setSubjFileSize(size);
		dto.setSubjStore(store);
		dto.setSubjOrigin(origin);
		dto.setTeachNo(subjectCommand.getTchNo());
		
		System.out.println("강사번호: "+dto.getTeachNo());
		
		lectureUploadingRepository.reposit(dto);
	}
}