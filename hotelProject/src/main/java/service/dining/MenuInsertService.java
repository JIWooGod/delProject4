package service.dining;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;

import command.dining.MenuCommand;
import model.dto.dining.MenuDTO;
import repository.dining.DiningRepository;

public class MenuInsertService {
	@Autowired
	private DiningRepository diningRepository;
	public String execute(Long rstNo, MenuCommand menuCommand, HttpServletRequest request, Model model) {
		MenuDTO dto = new MenuDTO();

		String storeTotal = "";
		String result = "";
		
		for(MultipartFile mf :menuCommand.getMenuImg()) //context 에 bean확인
		{
			String original = mf.getOriginalFilename();
			try {
				String originalFileExtension = original.substring(original.lastIndexOf("."));
				String store = UUID.randomUUID().toString().replace("-","")+originalFileExtension;
				String fileSize = Long.toString(mf.getSize());

				storeTotal += store + "-";

				String path = request.getServletContext().getRealPath("/");
				//path += "WEB-INF\\view\\GoodsView\\update\\";
				path += "dining\\update\\";

				File file = new File(path+store);
				try {
					mf.transferTo(file);
				} catch (Exception e) {
					e.printStackTrace();
				}
			} catch (Exception e) {
				// 메뉴등록에서 사진파일 선택안함 -> 에러
				model.addAttribute("noPic", dto);
				return result = "0";
			}
		}
		// 메뉴등록에서 정상적으로 사진파일 선택함
		//dto.setMenuNo(menuCommand.getMenuNo());
		dto.setRstNo(rstNo);
		dto.setMenuName(menuCommand.getMenuName());
		dto.setMenuPrice(menuCommand.getMenuPrice());
		dto.setMenuCnt(menuCommand.getMenuCnt());
		dto.setMenuImg(storeTotal);
		
		if(rstNo == 1) {
			diningRepository.menu1Insert(dto);
		} else if(rstNo == 2) {
			diningRepository.menu2Insert(dto);
		} else if(rstNo == 3) {
			diningRepository.menu3Insert(dto);
		}
		return result = "1";
	}

}
