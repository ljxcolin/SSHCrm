package stu.sshcrm.dao.intf;

import stu.sshcrm.domain.User;

public interface UserDao {

	User getUserByCode(String user_code);

	void save(User user);

	void updatePsw(User user);

}
