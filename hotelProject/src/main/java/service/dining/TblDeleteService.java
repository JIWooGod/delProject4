package service.dining;

import org.springframework.beans.factory.annotation.Autowired;

import model.dto.dining.SeatPlaceDTO;
import repository.dining.DiningRepository;

public class TblDeleteService {
	@Autowired
	private DiningRepository diningRepository;
	public void execute(Long rstTbl, Long rstNo) {
		SeatPlaceDTO dto = new SeatPlaceDTO();
		dto.setRstTbl(rstTbl);
		dto.setRstNo(rstNo);
		diningRepository.d1tblDelete(dto);
	}

}
