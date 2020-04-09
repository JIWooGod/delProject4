package repository.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;

import model.dto.member.MemberDTO;

public class MemberRepository {
	@Autowired
	private SqlSession sqlSession;
	private final String namespace = "MemberMapper";
	public void memInsert(MemberDTO dto) {
		String statement = namespace + ".memInsert";
		sqlSession.insert(statement, dto);
	}
	public MemberDTO chk(MemberDTO dto) {
		String statement = namespace + ".memChk";
		return sqlSession.selectOne(statement, dto);
	}
	
	
	
	
}
