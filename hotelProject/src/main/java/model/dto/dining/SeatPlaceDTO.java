package model.dto.dining;

import java.io.Serializable;

@SuppressWarnings("serial")
public class SeatPlaceDTO implements Serializable {
	Long rstNo;
	Long rstTbl;
	Long rstSeat;
	String rstName;
	
	public SeatPlaceDTO() {
		
	}
	
	public SeatPlaceDTO(Long rstNo, Long rstTbl, Long rstSeat, String rstName) {
		this.rstNo = rstNo;
		this.rstTbl = rstTbl;
		this.rstSeat = rstSeat;
		this.rstName = rstName;
	}
	public Long getRstNo() {
		return rstNo;
	}
	public void setRstNo(Long rstNo) {
		this.rstNo = rstNo;
	}
	public Long getRstTbl() {
		return rstTbl;
	}
	public void setRstTbl(Long rstTbl) {
		this.rstTbl = rstTbl;
	}
	public Long getRstSeat() {
		return rstSeat;
	}
	public void setRstSeat(Long rstSeat) {
		this.rstSeat = rstSeat;
	}
	public String getRstName() {
		return rstName;
	}
	public void setRstName(String rstName) {
		this.rstName = rstName;
	}
	
}