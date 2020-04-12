package repository.dining;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.dto.dining.DiningPayDTO;
import model.dto.dining.Menu2DTO;
import model.dto.dining.Menu3DTO;
import model.dto.dining.MenuDTO;
import model.dto.dining.RstDTO;
import model.dto.dining.SeatPlaceDTO;
import model.dto.dining.dReservationDTO;

public class DiningRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "DiningMapper";

	public List<SeatPlaceDTO> seatPlace1() {
		String statement = namespace + ".seatPlace1";
		return sqlSession.selectList(statement);
	}

	public List<SeatPlaceDTO> seatPlace2() {
		String statement = namespace + ".seatPlace2";
		return sqlSession.selectList(statement);
	}

	public List<SeatPlaceDTO> seatPlace3() {
		String statement = namespace + ".seatPlace3";
		return sqlSession.selectList(statement);
	}

	public void tbl1Insert(SeatPlaceDTO dto) {
		String statement = namespace + ".tbl1Insert";
		sqlSession.insert(statement, dto);
	}

	public void tbl2Insert(SeatPlaceDTO dto) {
		String statement = namespace + ".tbl2Insert";
		sqlSession.insert(statement, dto);
	}

	public void tbl3Insert(SeatPlaceDTO dto) {
		String statement = namespace + ".tbl3Insert";
		sqlSession.insert(statement, dto);
	}

	public void menu1Insert(MenuDTO dto) {
		String statement = namespace + ".menu1Insert";
		sqlSession.insert(statement, dto);
	}

	public void menu2Insert(MenuDTO dto) {
		String statement = namespace + ".menu2Insert";
		sqlSession.insert(statement, dto);
	}

	public void menu3Insert(MenuDTO dto) {
		String statement = namespace + ".menu3Insert";
		sqlSession.insert(statement, dto);
	}

	//메뉴판리스트
	public List<MenuDTO> menuSelect(Long rstNo) {
		String statement = namespace + ".menuSelect";
		return sqlSession.selectList(statement, rstNo);
	}

	public MenuDTO menuOneSelect(MenuDTO dto) {
		String statement = namespace + ".menuOneSelect";
		return sqlSession.selectOne(statement, dto);
	}

	//메뉴 수정(새파일 선택)
	public void menuUpdate(MenuDTO dto) {
		String statement = namespace + ".menuUpdate";
		sqlSession.update(statement, dto);
	}
	//메뉴 수정(파일선택X)
	public void noPicMenuUpdate(MenuDTO dto) {
		String statement = namespace + ".noPicMenuUpdate";
		sqlSession.update(statement, dto);
	}

	public void d1menuDelete(MenuDTO dto) {
		String statement = namespace + ".menuDelete";
		sqlSession.delete(statement, dto);
	}

	public void d1tblDelete(SeatPlaceDTO dto) {
		String statement = namespace + ".tblDelete";
		sqlSession.delete(statement, dto);
	}

	public RstDTO selectRst(Long rstNo) {
		String statement = namespace + ".rstSelect";
		return sqlSession.selectOne(statement, rstNo);
	}

	public List<MenuDTO> menu1Select() {
		String statement = namespace + ".mgmenu1";
		return sqlSession.selectList(statement);
	}

	public List<Menu2DTO> menu2Select() {
		String statement = namespace + ".mgmenu2";
		return sqlSession.selectList(statement);
	}

	public List<Menu3DTO> menu3Select() {
		String statement = namespace + ".mgmenu3";
		return sqlSession.selectList(statement);
	}

	public List<SeatPlaceDTO> tblDeleteList(Long rstNo) {
		String statement = namespace + ".tblDeleteList";
		return sqlSession.selectList(statement, rstNo);
	}

	public dReservationDTO resMenuOneSelect(dReservationDTO dto) {
		String statement = namespace + ".resMenuOneSelect";
		return sqlSession.selectOne(statement, dto);
	}

	public void insertDiningRes(dReservationDTO dto) {
		String statement = namespace + ".insertDiningRes";
		sqlSession.insert(statement, dto);
	}

	public void insertPayDining(DiningPayDTO pay) {
		String statement = namespace + ".insertPay";
		sqlSession.insert(statement, pay);
	}

	//예약단계중 메뉴 여러개 선택
	public List<dReservationDTO> reservaltionMenus(dReservationDTO dto) {
		String statement = namespace + ".reservaltionMenus";
		return sqlSession.selectList(statement, dto);
	}

	public List<dReservationDTO> memResChk(String id) {
		String statement = namespace + ".memResChk";
		return sqlSession.selectList(statement, id);
	}

	

	


	


}






