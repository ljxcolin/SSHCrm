package stu.sshcrm.service.intf;

import stu.sshcrm.domain.User;

public interface UserService {

	User getUserByCode(User user);

	void save(User user);

	void updatePsw(User user);

}
