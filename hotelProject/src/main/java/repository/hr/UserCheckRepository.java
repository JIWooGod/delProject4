package repository.hr;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.dto.member.AuthInfo;

//아이디 중복체크용 레퍼지토리
@Repository
public class UserCheckRepository {
	String namespace = "applyMapper";
	@Autowired
	private SqlSession sqlSession;
	
	//Service에서 authInfo.setId로 저장된 값이 userId
	public AuthInfo check(String userId) {
		String statement = namespace + ".userCheck";
		//반환되는 객체는 AuthInfo객체고, 저장되는 값은 id와 admin
		return sqlSession.selectOne(statement, userId);
	}
}