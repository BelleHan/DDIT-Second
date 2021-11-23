package damanna.admin.dao;
/**
 * 실제 DB와 연결해서 SQL문을 수행하여 결과를 작성해서 Service에게 전달하는
 * DAO의 interface
 */
public interface IAdminDao {

	
	
	/**
	 * Admin ID를 이용해 Login하는 메서드
	 * @param adminId 로그인할 회원 ID
	 * @return 일치하는 회원 존재시 1, 미존재시 0
	 */
	public String loginAdmin(String adminId);
}
