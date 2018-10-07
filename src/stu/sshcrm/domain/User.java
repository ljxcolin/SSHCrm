package stu.sshcrm.domain;

import java.util.HashSet;
import java.util.Set;

public class User {
	
	private Integer user_id;
	private String user_code;
	private String user_name;
	private String user_password;
	private Character user_state;
	
	//——表示多对多关系（设置对应多的一方）
	private Set<Role> roles = new HashSet<Role>();
		
	public Integer getUser_id() {
		return user_id;
	}
	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}
	public String getUser_code() {
		return user_code;
	}
	public void setUser_code(String user_code) {
		this.user_code = user_code;
	}
	public String getUser_name() {
		return user_name;
	}
	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}
	public String getUser_password() {
		return user_password;
	}
	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}
	public Character getUser_state() {
		return user_state;
	}
	public void setUser_state(Character user_state) {
		this.user_state = user_state;
	}
	public Set<Role> getRoles() {
		return roles;
	}
	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("User [user_id=");
		builder.append(user_id);
		builder.append(", user_code=");
		builder.append(user_code);
		builder.append(", user_state=");
		builder.append(user_state);
		builder.append("]");
		return builder.toString();
	}
	
}
