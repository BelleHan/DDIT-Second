package damanna.member.dao;

import java.util.List;

import damanna.vo.MemberVO;

/**
 * 실제 DB와 연결해서 SQL문을 수행하여 결과를 작성해서 Service에게 전달하는
 * DAO의 interface
 */
public interface IMemberDao {
	/**
	 * MemberVO에 담겨진 데이터를 DB에 insert하는 메서드
	 * @param memVo DB에 insert할 자료가 저장될 MemberVO객체
	 * @return 작업 성공 : 1이상, 작업실패 : 0
	 */
	public int insertMember(MemberVO memVo);
	
	/**
	 * 회원ID를 매개변수로 받아서 해당 회원ID의 정보를 가져오는 메서드
	 * @param memId 가져올 회원ID
	 * @return 조건에 맞는 회원정보가 저장된 MemberVO객체
	 */
	public MemberVO getMember(String memId);
	
	/**
	 * Member ID를 이용해 Login하는 메서드
	 * @param memId 로그인할 회원 ID
	 * @return 일치하는 회원 존재시 1, 미존재시 0
	 */
	public String loginMember(String memId);
	
	public List<MemberVO> selectPicture();
	
	
	/**
	 * 회원ID를 매개변수로 받아서 해당 회원의 개수를 반환하는 메서드
	 * @param memId 검색할 회원ID
	 * @return 검색된 회원의 개수
	 */
	public int getMemberCount(String memId);
	/**
	 * DB의 회원테이블의 전체 레코드를 가져와서 List에 담아서 반환하는 메서드
	 * @return 검색된 데이터가 저장된 List객체
	 */
	public List<MemberVO> getAllMemberList();
	/**
	 * DB의 회원테이블의 Approve가 n인 데이터를 가져와서 List에 담아서 반환하는 메서드
	 * @return 검색된 데이터가 저장된 List객체
	 */
	public List<MemberVO> getWatingMember();
	/**
	 * MemberVO에 담겨진 데이터를 DB에 delete하는 메서드
	 * @param memVo DB에 자료가 delete
	 * @return 작업 성공 : 1이상, 작업실패 : 0
	 */
	public int deleteMember(String memId);
	/**
	 * MemberVO자료를 이용하여 DB에 update하는 메서드
	 * @param memVo update할 회원정보가 저장된 MemberVO객체
	 * @return 작업 성공 : 1, 작업 실패 : 0
	 */
	public int updateMember(MemberVO memVo);

}








