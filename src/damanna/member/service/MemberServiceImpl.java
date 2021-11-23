package damanna.member.service;

import java.util.List;

import damanna.member.dao.IMemberDao;
import damanna.member.dao.MemberDaoImpl;
import damanna.vo.MemberVO;

public class MemberServiceImpl implements IMemberService {
	private IMemberDao memDao;
	
	private static MemberServiceImpl service;
	
	private MemberServiceImpl() {
		//memDao = new MemberDaoImpl();
		memDao = MemberDaoImpl.getInstance();
	}
	
	public static MemberServiceImpl getInstance() {
		if(service==null) service = new MemberServiceImpl();
		return service;
	}
	
	@Override
	public int insertMember(MemberVO memVo) {
		return memDao.insertMember(memVo);
	}

	@Override
	public MemberVO getMember(String memId) {
		return memDao.getMember(memId);
	}

	@Override
	public String loginMember(String memId) {
		return memDao.loginMember(memId);
	}


	@Override
	public List<MemberVO> selectPicture() {
		return memDao.selectPicture();
	}


	@Override
	public int getMemberCount(String memId) {
		// TODO Auto-generated method stub
		return memDao.getMemberCount(memId);
	}

	@Override
	public List<MemberVO> getAllMemberList() {
		// TODO Auto-generated method stub
		return memDao.getAllMemberList();
	}

	@Override
	public List<MemberVO> getWatingMember() {
		// TODO Auto-generated method stub
		return memDao.getWatingMember();
	}
	@Override
	public int deleteMember(String memId) {
		// TODO Auto-generated method stub
		return memDao.deleteMember(memId);
	}
	@Override
	public int updateMember(MemberVO memVo) {
		// TODO Auto-generated method stub
		return memDao.updateMember(memVo);
	}
}
