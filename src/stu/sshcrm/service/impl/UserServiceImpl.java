package stu.sshcrm.service.impl;

import stu.sshcrm.dao.intf.UserDao;
import stu.sshcrm.service.intf.UserService;
import stu.sshcrm.domain.User;
import stu.sshcrm.web.exception.LoginException;
import stu.sshcrm.web.exception.RegisterException;

public class UserServiceImpl implements UserService {

	private UserDao userDao;
	
	/**
	 * @function 用户登录
	 * @param user
	 * @return
	 */
	@Override
	public User getUserByCode(User user) {
		User u = userDao.getUserByCode(user.getUser_code());
		if(u == null) {
			throw new LoginException("用户不存在！");
		}
		if(!user.getUser_password().equals(u.getUser_password())) {
			throw new LoginException("密码不正确！");
		}
		return u;
	}
	
	/**
	 * @function 用户注册
	 */
	@Override
	public void save(User user) {
		User u = userDao.getUserByCode(user.getUser_code());
		if(u == null) {
			userDao.save(user);
		}else {
			throw new RegisterException("用户名已存在！");
		}
	}

	@Override
	public void updatePsw(User user) {
		userDao.updatePsw(user);
	}
	
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
	}
	
}
