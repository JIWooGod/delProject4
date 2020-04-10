package repository.room;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.dto.pay.PayDTO;
import model.dto.room.ReservationChkDTO;
import model.dto.room.ReservationDTO;
import model.dto.room.RoomDTO;



@Repository
public class RoomRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "roomMapper";
	
	public void insertRoom(RoomDTO dto)
	{
		String statement = namespace+".insertRoom";
		sqlSession.insert(statement,dto);
	}
	public RoomDTO roomReservation(String roomGrade)
	{
		String statement = namespace+".reservation";
		return sqlSession.selectOne(statement,roomGrade);
	}
	
	public RoomDTO selectRoom(ReservationDTO dto)
	{
		String statement = namespace+".selectRoom";
		return sqlSession.selectOne(statement,dto);
	}
	public List<RoomDTO> selectRooms(ReservationDTO dto)
	{
		String statement = namespace+".selectRooms";
		return sqlSession.selectList(statement,dto);
	}
	
	public void insertPay(PayDTO dto)
	{
		String statement = namespace+".insertPay";
		sqlSession.insert(statement,dto);
	}
	public void insertReservation(ReservationDTO dto)
	{
		String statement = namespace+".insertReservation";
		sqlSession.insert(statement,dto);
	}
	public ReservationDTO selectReservationOk(String userId)
	{
		String statement = namespace+".selectReservationOk";
		return sqlSession.selectOne(statement,userId);
	}
	public List<ReservationDTO> reservationCheck(ReservationChkDTO dto)
	{
		String statement = namespace+".reservatonCheck";
		return sqlSession.selectList(statement,dto);
	}
	public List<RoomDTO> roomCheckOk(ReservationChkDTO dto)
	{
		String statement = namespace+".roomChkOk";
		return sqlSession.selectList(statement,dto);
	}
	public List<ReservationDTO> myReservation(String userId)
	{
		String statement = namespace+".myReservation";
		return sqlSession.selectList(statement,userId);
	}
	public ReservationDTO ReservationDetail(String rmbkNo)
	{
		String statement = namespace+".reservationDetail";
		return sqlSession.selectOne(statement,rmbkNo);
	}
	
	
}
