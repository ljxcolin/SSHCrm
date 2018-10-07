package stu.sshcrm.dao.impl;

import java.util.List;
import java.util.Set;

import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import stu.sshcrm.dao.intf.CustomerDao;
import stu.sshcrm.domain.Customer;
import stu.sshcrm.domain.LinkMan;

public class CustomerDaoImpl extends HibernateDaoSupport implements CustomerDao {
	
	@Override
	public void save(Customer customer) {
		getHibernateTemplate().saveOrUpdate(customer);
	}
	
	@Override
	public void delete(Long cust_id) {
		Customer customer = getHibernateTemplate().get(Customer.class, cust_id);
		Set<LinkMan> linkMen = customer.getLinkMen();
		getHibernateTemplate().deleteAll(linkMen);
		getHibernateTemplate().delete(customer);
	}
	
	@Override
	public Customer getCustomerById(Long cust_id) {
		return getHibernateTemplate().get(Customer.class, cust_id);
	}

	@Override
	public List<Customer> getAllCustomers() {
		@SuppressWarnings("unchecked")
		List<Customer> customers = (List<Customer>) getHibernateTemplate().find("from Customer");
		return customers;
	}

	@Override
	public List<Customer> getCustomers(DetachedCriteria dc) {
		@SuppressWarnings("unchecked")
		List<Customer> customers = (List<Customer>) getHibernateTemplate().findByCriteria(dc);
		return customers;
	}

}
