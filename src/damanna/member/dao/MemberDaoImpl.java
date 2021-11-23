package damanna.member.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.ibatis.sqlmap.client.SqlMapClient;

import damanna.util.SqlMapClientFactory;
import damanna.vo.MemberVO;

public class MemberDaoImpl implements IMemberDao {
	// 1번
	private static MemberDaoImpl dao;
	private SqlMapClient smc; // iBatis객체가 저장될 변수 선언

	// 2번
	private MemberDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}

	// 3번
	public static MemberDaoImpl getInstance() {
		if (dao == null)
			dao = new MemberDaoImpl();

		return dao;
	}

	@Override
	public int insertMember(MemberVO memVo) {
		int cnt = 0;
		try {
			Object obj = smc.insert("member.insertMember", memVo);
			if (obj == null)
				cnt = 1;

		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}

		return cnt;
	}

	@Override
	public MemberVO getMember(String memId) {
		MemberVO memVo = null;
		try {
			memVo = (MemberVO) smc.queryForObject("member.getMember", memId);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return memVo;
	}

	@Override
	public String loginMember(String memId) {
		
		String login = null;
		
		try {
			
			login = (String) smc.queryForObject("member.memberLogin", memId);
			
		} catch (SQLException e) {			
			login = null;
			e.printStackTrace();
		}
		return login;
	}

	@Override
	public List<MemberVO> selectPicture() {
		List<MemberVO> memVo = null;
		
		try {
			
			memVo = smc.queryForList("member.selectPicture");
			
		} catch (SQLException e) {
			memVo = null;
			e.printStackTrace();
		}
		return memVo;
	}

	@Override
	public int getMemberCount(String memId) {
		int count = 0;  // 회원ID개수가 저장될 변수
		
		try {
			count = (int) smc.queryForObject("member.getMemberCount", memId);
		} catch (SQLException e) {
			count = 0;
			e.printStackTrace();
		} 
		
		return count;
	}

	@Override
	public List<MemberVO> getAllMemberList() {
		List<MemberVO> memList = new ArrayList<>();
		
		try {
			memList = smc.queryForList("member.getAllMemberList");
		} catch (SQLException e) {
			memList = null;
			e.printStackTrace();
		} 
		
		return memList;
	}

	@Override
	public List<MemberVO> getWatingMember() {
		List<MemberVO> memList2 = new ArrayList<>();
		
		try {
			memList2 = smc.queryForList("member.getWatingMember");
		} catch (SQLException e) {
			memList2 = null;
			e.printStackTrace();
		} 
		
		return memList2;
	}
	
	@Override
	public int deleteMember(String memId) {
		int cnt = 0;
		try {
			cnt = smc.delete("member.deleteMember", memId);
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		
		return cnt;
	}
	
	@Override
	public int updateMember(MemberVO memVo) {
		int cnt = 0;
		
		try {
			cnt = smc.update("member.updateMember", memVo);
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		} 
		
		return cnt;
	}
}
