package repository.shop;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import model.dto.member.AuthInfo;
import model.dto.room.RoomDTO;
import model.dto.shop.cartDTO;
import model.dto.shop.shopDTO;

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
	



}
