package stu.sshcrm.dao.impl;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import stu.sshcrm.dao.intf.UserDao;
import stu.sshcrm.domain.User;

public class UserDaoImpl extends HibernateDaoSupport implements UserDao {

	@Override
	public User getUserByCode(String user_code) {
		return getHibernateTemplate().execute(new HibernateCallback<User>() {
			@Override
			public User doInHibernate(Session session) throws HibernateException {
				String hql = "from User where user_code = ?";
				Query query = session.createQuery(hql);
				query.setParameter(0, user_code);
				User user = (User) query.uniqueResult();
				return user;
			}
		});
	}

	@Override
	public void save(User user) {
		getHibernateTemplate().saveOrUpdate(user);
	}

	@Override
	public void updatePsw(User user) {
		User us = getHibernateTemplate().get(User.class, user.getUser_id());
		us.setUser_password(user.getUser_password());
	}

}
