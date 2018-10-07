package stu.sshcrm.test;

import stu.sshcrm.domain.User;

public interface TestDao {

	User getUserByCode(String user_code);

	void saveUser(User user);

	void updateUser(User user);

}
