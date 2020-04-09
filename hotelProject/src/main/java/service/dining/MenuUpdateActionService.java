package service.dining;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.dining.MenuCommand;
import model.dto.dining.MenuDTO;
import repository.dining.DiningRepository;

@Service
public class MenuUpdateActionService {
   @Autowired
   private DiningRepository diningRepository;

   public String execute(Long menuNo, Long rstNo, MenuCommand menuCommand, HttpServletRequest request) {
      MenuDTO dto = new MenuDTO();
      dto.setMenuNo(menuNo);
      dto.setRstNo(rstNo);
      dto.setMenuName(menuCommand.getMenuName());
      dto.setMenuPrice(menuCommand.getMenuPrice());
      dto.setMenuCnt(menuCommand.getMenuCnt());
      System.out.println("테스트1");
      String storeTotal = "";
      String result = "";

      for(MultipartFile mf : menuCommand.getMenuImg()) {//context 에 bean확인
         String original = mf.getOriginalFilename();
         System.out.println("오리지날 = " + original);
         System.out.println("테스트2");
         //메뉴수정시 파일 새로 선택안함
         if(original.isEmpty()) {
            diningRepository.noPicMenuUpdate(dto);
            result = "0";
            return result;
         }
         
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
      }
      dto.setMenuImg(storeTotal);
      diningRepository.menuUpdate(dto);
      //메뉴수정시 새파일 선택함
      result = "1";
      return result;
   }

}





