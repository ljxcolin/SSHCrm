package stu.sshcrm.test;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import stu.sshcrm.domain.User;
import stu.sshcrm.utils.HbntUtils;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:applicationContext.xml")
public class TestHbnt {
	
	@Resource(name="sessionFactory")
	private SessionFactory sessionFactory;
	
	/**
	 * @function 测试原生hibernate
	 */
	@Test
	public void test() {
		Session session = HbntUtils.openSession();
		Transaction tx = session.beginTransaction();
		User user = new User();
		user.setUser_code("zjc");
		user.setUser_name("zhujiachen");
		user.setUser_password("zjc123");
		session.save(user);
		tx.commit();
		session.close();
	}
	
	/**
	 * @function 测试Hibernate+Spring整合方案1
	 */
	@Test
	public void test01() {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		User user = new User();
		user.setUser_code("gzf");
		user.setUser_name("guanzhifeng");
		user.setUser_password("gzf123");
		session.save(user);
		tx.commit();
		session.close();
	}
	
	/**
	 * @function 测试Hibernate+Spring整合方案2
	 */
	@Test
	public void test02() {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		User user = new User();
		user.setUser_code("mjl");
		user.setUser_name("majianglong");
		user.setUser_password("mjl123");
		session.save(user);
		tx.commit();
		session.close();
	}
	
	/**
	 * @function 测试Spring整合C3P0
	 */
	@Test
	public void test03() {
		Session session = sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		User user = new User();
		user.setUser_code("czz");
		user.setUser_name("chenzhangzheng");
		user.setUser_password("czzl123");
		session.save(user);
		tx.commit();
		session.close();
	}
	
}
