package service.dining;

import org.springframework.beans.factory.annotation.Autowired;

import command.dining.ResTblCommand;
import model.dto.dining.SeatPlaceDTO;
import repository.dining.DiningRepository;

public class TblInsertService {
	@Autowired
	private DiningRepository diningRepository;
		public void execute(Long rstNo, ResTblCommand resTblCommand) {
			SeatPlaceDTO dto = new SeatPlaceDTO();
			dto.setRstNo(rstNo);
			dto.setRstSeat(resTblCommand.getRstSeat());
			
			if(rstNo == 1) {
				diningRepository.tbl1Insert(dto);
			} else if(rstNo == 2) {
				diningRepository.tbl2Insert(dto);
			} else if(rstNo == 3) {
				diningRepository.tbl3Insert(dto);
			}
		}
}
