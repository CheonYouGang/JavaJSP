package chap12;
/*
 *	sql 테이블의 userinfo의 컬럼명
 *	db의 데이터를 그대로 가져와 적용
 */
public class UserInfo {
	String uname = null;
	String id = null;
	String password = null;
	
	public UserInfo(String uname, String id, String password) {
		this.uname = uname;
		this.id = id;
		this.password = password;
	}

	public UserInfo() {
		
	}

	
	public String getUname() {
		return uname;
	}
	public String getId() {
		return id;
	}
	public String getPassword() {
		return password;
	}

	
	public void setUname(String uname) {
		this.uname = uname;
	}
	public void setId(String id) {
		this.id = id;
	}
	public void setPassword(String password) {
		this.password = password;
	}
}
