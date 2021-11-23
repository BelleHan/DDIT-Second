package damanna.vo;

public class MemberVO {
//	private int city_code;
	private String member_id;
	private String member_pw;
	private String member_nm;
	private String member_bir;
	private String membmer_mail;
	private String member_hp;
	private String member_gen;
	private String member_img1;
	private String member_img2;
	private String match_type; 
	private String member_hobby;
	private String profile_intro;
	private String member_insta;
	private String profile_music;
	private String mem_join;
	private String approve_ny;
	private String mem_rej;
	private String membership_yn;

	// 기본 생성자
	public MemberVO() {
	}

	public MemberVO(String member_id, String member_pw, String member_nm, String member_bir,
			String membmer_mail, String member_hp, String member_gen, String member_img1, String member_img2,
			String match_type, String member_hobby, String profile_intro, String member_insta, String profile_music,
			String mem_join, String approve_ny, String mem_rej, String membership_yn) {
		super();
//		this.city_code = city_code;
		this.member_id = member_id;
		this.member_pw = member_pw;
		this.member_nm = member_nm;
		this.member_bir = member_bir;
		this.membmer_mail = membmer_mail;
		this.member_hp = member_hp;
		this.member_gen = member_gen;
		this.member_img1 = member_img1;
		this.member_img2 = member_img2;
		this.match_type = match_type;
		this.member_hobby = member_hobby;
		this.profile_intro = profile_intro;
		this.member_insta = member_insta;
		this.profile_music = profile_music;
		this.mem_join = mem_join;
		this.approve_ny = approve_ny;
		this.mem_rej = mem_rej;
		this.membership_yn = membership_yn;
	}

//	public int getCity_code() {
//		return city_code;
//	}
//
//	public void setCity_code(int city_code) {
//		this.city_code = city_code;
//	}

	public String getMember_id() {
		return member_id;
	}

	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}

	public String getMember_pw() {
		return member_pw;
	}

	public void setMember_pw(String member_pw) {
		this.member_pw = member_pw;
	}

	public String getMember_nm() {
		return member_nm;
	}

	public void setMember_nm(String member_nm) {
		this.member_nm = member_nm;
	}

	public String getMember_bir() {
		return member_bir;
	}

	public void setMember_bir(String member_bir) {
		this.member_bir = member_bir;
	}

	public String getMembmer_mail() {
		return membmer_mail;
	}

	public void setMembmer_mail(String membmer_mail) {
		this.membmer_mail = membmer_mail;
	}

	public String getMember_hp() {
		return member_hp;
	}

	public void setMember_hp(String member_hp) {
		this.member_hp = member_hp;
	}

	public String getMember_gen() {
		return member_gen;
	}

	public void setMember_gen(String member_gen) {
		this.member_gen = member_gen;
	}

	public String getMember_img1() {
		return member_img1;
	}

	public void setMember_img1(String member_img1) {
		this.member_img1 = member_img1;
	}

	public String getMember_img2() {
		return member_img2;
	}

	public void setMember_img2(String member_img2) {
		this.member_img2 = member_img2;
	}

	public String getMatch_type() {
		return match_type;
	}

	public void setMatch_type(String match_type) {
		this.match_type = match_type;
	}

	public String getMember_hobby() {
		return member_hobby;
	}

	public void setMember_hobby(String member_hobby) {
		this.member_hobby = member_hobby;
	}

	public String getProfile_intro() {
		return profile_intro;
	}

	public void setProfile_intro(String profile_intro) {
		this.profile_intro = profile_intro;
	}

	public String getMember_insta() {
		return member_insta;
	}

	public void setMember_insta(String member_insta) {
		this.member_insta = member_insta;
	}

	public String getProfile_music() {
		return profile_music;
	}

	public void setProfile_music(String profile_music) {
		this.profile_music = profile_music;
	}

	public String getMem_join() {
		return mem_join;
	}

	public void setMem_join(String mem_join) {
		this.mem_join = mem_join;
	}

	public String getApprove_ny() {
		return approve_ny;
	}

	public void setApprove_ny(String approve_ny) {
		this.approve_ny = approve_ny;
	}

	public String getMem_rej() {
		return mem_rej;
	}

	public void setMem_rej(String mem_rej) {
		this.mem_rej = mem_rej;
	}

	public String getMembership_yn() {
		return membership_yn;
	}

	public void setMembership_yn(String membership_yn) {
		this.membership_yn = membership_yn;
	}
	
	
}
