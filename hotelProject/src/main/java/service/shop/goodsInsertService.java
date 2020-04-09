package service.shop;

import java.io.File;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import command.shop.shopCommand;
import model.dto.shop.shopDTO;

import repository.shop.ShopRepository;

@Service
public class goodsInsertService {
	@Autowired
	ShopRepository shopRepository;

	public void execute(shopCommand shopcommand, HttpServletRequest request) {
		shopDTO dto = new shopDTO();
		dto.setGoodsPrice(shopcommand.getGoodsPrice());
		dto.setGoodsCategory(shopcommand.getGoodsCategory());
		dto.setGoodsCode(shopcommand.getGoodsCode());
		dto.setGoodsOpt(shopcommand.getGoodsOpt());
		dto.setGoodsName(shopcommand.getGoodsName());
		
		String storeTotal = "";
		
		for(MultipartFile mf :shopcommand.getGoodsPic())
		{
			String original = mf.getOriginalFilename();
			String originalFileExtension = original.substring(original.lastIndexOf("."));
			String store = UUID.randomUUID().toString().replace("-","")+originalFileExtension;
			String fileSize = Long.toString(mf.getSize());
			
			storeTotal += store + "-";
		
			String path = request.getServletContext().getRealPath("/");
			//path += "WEB-INF\\view\\GoodsView\\update\\";
			path += "shop\\img\\product\\";
			
			File file = new File(path+store);
			try 
			{
				mf.transferTo(file);
			} catch (Exception e)
			{
		
				e.printStackTrace();
			}
		}
		dto.setGoodsPic(storeTotal);
		
		shopRepository.insertShop(dto);
	}
	
}
