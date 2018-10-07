package stu.sshcrm.dao.intf;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import stu.sshcrm.domain.Customer;

public interface CustomerDao {

	void save(Customer customer);

	void delete(Long cust_id);
	
	Customer getCustomerById(Long cust_id);
	
	List<Customer> getAllCustomers();

	List<Customer> getCustomers(DetachedCriteria dc);

}
