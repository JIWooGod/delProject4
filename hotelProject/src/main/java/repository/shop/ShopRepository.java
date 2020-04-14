package repository.shop;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import command.shop.shopChkCommand;
import model.dto.member.AuthInfo;
import model.dto.pay.PayDTO;
import model.dto.room.RoomDTO;
import model.dto.shop.cartDTO;
import model.dto.shop.shopDTO;
import model.dto.shop.shopPayDTO;

@Repository
public class ShopRepository {
	@Autowired
	SqlSession sqlSession;
	private final String namespace = "shopMapper";
	
	public List<shopDTO> goodsList() {
		String statement = namespace + ".goodsList";
		return sqlSession.selectList(statement);
	}
	public void insertShop(shopDTO dto) {
		String statement = namespace+".insertGoods";
		sqlSession.insert(statement,dto);
	}
	public void insertCart(shopDTO dto) {
		String statement = namespace+".insertCart";
		sqlSession.insert(statement,dto);
	}

	public shopDTO goodsDetail(String goodsCode) {
		String statement = namespace+".goodsDetail";
		return sqlSession.selectOne(statement, goodsCode);
	}
	public List<shopDTO> goodsCateList(String goodsCategory) {
		String statement = namespace + ".goodsCateList";
		return sqlSession.selectList(statement, goodsCategory);
	}
	public List<cartDTO> cartList(Model model, HttpSession session) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		String memId = authInfo.getId();
		String statement = namespace + ".cartList";
		
		return sqlSession.selectList(statement, memId);
	}

	public int gtyUp(cartDTO dto) {
		String statement = namespace + ".cartQtyUp";
		return sqlSession.update(statement, dto);
		
	}
	public int gtyDown(cartDTO dto) {
		String statement = namespace + ".cartQtyDown";
		return sqlSession.update(statement, dto);
		
	}
	public int delcart(HttpSession session) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		String memId = authInfo.getId();
		String statement = namespace + ".cartDel";
		return sqlSession.delete(statement, memId);
		
	}
	public void oneDel(cartDTO dto) {
		String statement = namespace + ".cartOneDel";
		sqlSession.delete(statement, dto);
	}
	public List<cartDTO> memList(HttpSession session) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		String memId = authInfo.getId();
		String statement = namespace + ".memSelect";

		return  sqlSession.selectList(statement, memId);
	
	}
	public List<cartDTO> rbList(HttpSession session) {
		AuthInfo authInfo = (AuthInfo)session.getAttribute("authInfo");
		String memId = authInfo.getId();
		String statement = namespace + ".rbSelect";

		return  sqlSession.selectList(statement, memId);
	}
	public List<cartDTO> chkCode(String coupon) {
		String statement = namespace + ".chkCode";
		return sqlSession.selectList(statement, coupon);
	}
	public void insertPay(PayDTO dto) {
		String statement = namespace+".shopInsertPay";
		sqlSession.insert(statement, dto);
		
	}
	public void delOne(String goodsCode) {
		String statement = namespace+".delGoods";
		sqlSession.delete(statement, goodsCode);
		
	}
	public void insertOrder(shopPayDTO dto) {
		String statement = namespace+".insertOeder";
		sqlSession.insert(statement,dto);
		
	}

	public List<cartDTO> shipList() {
		String statement = namespace+".shipList";
		return sqlSession.selectList(statement);
	}
	




}
