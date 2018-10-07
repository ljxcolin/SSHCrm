package stu.sshcrm.service.intf;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import stu.sshcrm.domain.Customer;

public interface CustomerService {

	void save(Customer customer);

	void delete(Long cust_id);

	Customer getCustomerById(Long cust_id);
	
	List<Customer> getCustomers(DetachedCriteria dc);

	List<Customer> getAllCustomers();

}
