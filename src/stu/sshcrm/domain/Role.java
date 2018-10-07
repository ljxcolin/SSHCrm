package stu.sshcrm.domain;

import java.util.HashSet;
import java.util.Set;

public class Role {

	private Integer role_id;
	private String role_name;
	private String role_memo;
	
	//——表示多对多关系（设置对应多的一方）
	private Set<User> users = new HashSet<User>();
	
	public Integer getRole_id() {
		return role_id;
	}
	public void setRole_id(Integer role_id) {
		this.role_id = role_id;
	}
	public String getRole_name() {
		return role_name;
	}
	public void setRole_name(String role_name) {
		this.role_name = role_name;
	}
	public String getRole_memo() {
		return role_memo;
	}
	public void setRole_memo(String role_memo) {
		this.role_memo = role_memo;
	}
	public Set<User> getUsers() {
		return users;
	}
	public void setUsers(Set<User> users) {
		this.users = users;
	}
	
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Role [role_id=");
		builder.append(role_id);
		builder.append(", role_name=");
		builder.append(role_name);
		builder.append("]");
		return builder.toString();
	}
	
}
