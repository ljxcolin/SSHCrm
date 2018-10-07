package stu.sshcrm.service.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import stu.sshcrm.dao.intf.CustomerDao;
import stu.sshcrm.service.intf.CustomerService;
import stu.sshcrm.domain.Customer;

public class CustomerServiceImpl implements CustomerService {

	private CustomerDao custDao;
	
	@Override
	public void save(Customer customer) {
		custDao.save(customer);
	}

	@Override
	public void delete(Long cust_id) {
		custDao.delete(cust_id);
	}

	@Override
	public Customer getCustomerById(Long cust_id) {
		return custDao.getCustomerById(cust_id);
	}
	
	@Override
	public List<Customer> getCustomers(DetachedCriteria dc) {
		List<Customer> customers = custDao.getCustomers(dc);
		return customers;
	}

	@Override
	public List<Customer> getAllCustomers() {
		return custDao.getAllCustomers();
	}

	public void setCustDao(CustomerDao custDao) {
		this.custDao = custDao;
	}
	
}
