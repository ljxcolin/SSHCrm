package stu.sshcrm.test;

import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import stu.sshcrm.domain.User;
@Transactional(isolation=Isolation.REPEATABLE_READ,propagation=Propagation.REQUIRED,readOnly=true)
public class TestServiceImpl implements TestService {

	private TestDao testDao;
	
	/**
	 * @function 测试Struts+Spring整合，
	 * @conclusion Action由Spring创建，Action中testService由Spring注入
	 */
	@Override
	public void test00() {
		System.out.println("Test00 run...");
	}

	/**
	 * @function 测试HibernateTemplate的使用
	 */
	@Override
	public void test01() {
		User user = testDao.getUserByCode("ljx");
		System.out.println(user);
	}
	
	/**
	 * @function 测试HibernateTransactionManager
	 * @function 测试XML配置AOP事务
	 */
	@Override
	public void test02() {
		User user = testDao.getUserByCode("ljx");
		System.out.println(user);
	}
	
	/**
	 * @function 测试HibernateTransactionManager
	 * @function 测试XML配置AOP事务
	 */
	@Override
	public void test03() {
		User user = new User();
		user.setUser_code("zjx");
		user.setUser_name("zhoujiaxin");
		user.setUser_password("zjx123");
		testDao.saveUser(user);
	}
	
	/**
	 * @function 测试HibernateTransactionManager
	 * @function 测试Anno注解配置AOP事务
	 */
	@Override
	@Transactional(readOnly=false)
	public void test04() {
		User user = new User();
		user.setUser_id(5);
		user.setUser_code("clb");
		user.setUser_password("clb123");
		testDao.updateUser(user);
	}

	public void setTestDao(TestDao testDao) {
		this.testDao = testDao;
	}
	
}
