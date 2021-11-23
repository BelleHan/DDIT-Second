package damanna.admin.service;
/**
 * Service객체는 DAO에 설정된 메서드를 원하는 작업에 맞게 호출하여
 * 결과를 받아오고, 받아온 결과 자료를 Controller에게 보내주는 역할을 한다.
 * 
 * 보통 DAO의 메서드 구조와 같게 만든다.
 */
public interface IAdminService {

	/**
	 * Admin ID를 이용해 Login하는 메서드
	 * @param adminId 로그인할 회원 ID
	 * @return 일치하는 회원 존재시 1, 미존재시 0
	 */
	public String loginAdmin(String adminId);
}
