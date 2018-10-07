package stu.sshcrm.test;

import java.util.List;

//import org.hibernate.HibernateException;
//import org.hibernate.Query;
//import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;
//import org.springframework.orm.hibernate5.HibernateCallback;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import stu.sshcrm.domain.User;

public class TestDaoImpl extends HibernateDaoSupport implements TestDao {

	@Override
	public User getUserByCode(String user_code) {
		//HQL查询
		/*return getHibernateTemplate().execute(new HibernateCallback<User>() {
			@Override
			public User doInHibernate(Session session) throws HibernateException {
				String hql = "from User where user_code = ?";
				Query query = session.createQuery(hql);
				query.setParameter(0, user_code);
				User user = (User) query.uniqueResult();
				return user;
			}
		});*/
		//Criteria查询
		DetachedCriteria dc = DetachedCriteria.forClass(User.class);
		dc.add(Restrictions.eq("user_code", user_code));
		@SuppressWarnings("unchecked")
		List<User> users = (List<User>) getHibernateTemplate().findByCriteria(dc);
		if(users != null && users.size() > 0) {
			return users.get(0);
		}
		return null;
	}

	@Override
	public void saveUser(User user) {
		getHibernateTemplate().save(user);
		System.out.println(user);
	}

	@Override
	public void updateUser(User user) {
		User us = getHibernateTemplate().get(User.class, user.getUser_id());
		us.setUser_code(user.getUser_code());
		us.setUser_password(user.getUser_password());
		System.out.println(us);
	}

}
