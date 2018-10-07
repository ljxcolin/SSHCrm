package stu.sshcrm.web.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import stu.sshcrm.domain.Customer;
import stu.sshcrm.service.intf.CustomerService;

public class CustomerAction extends ActionSupport implements ModelDriven<Customer>{

	private static final long serialVersionUID = 1L;
	private CustomerService custService;
	private Customer customer = new Customer();
	
	@Override
	public Customer getModel() {
		return customer;
	}
	
	/**
	 * @function 客户列表
	 * @return 结果处理
	 * @throws Exception
	 */
	public String list() throws Exception {
		//0接收参数
		String cust_name = customer.getCust_name();
		//1创建离线查询对象并拼接条件
		DetachedCriteria dc = DetachedCriteria.forClass(Customer.class);
		if(StringUtils.isNotBlank(cust_name)) {
			dc.add(Restrictions.like("cust_name", "%" + cust_name.trim() + "%"));
		}
		List<Customer> customers = custService.getCustomers(dc);
		ActionContext.getContext().put("customers", customers);
		return "list";
	}
	
	/**
	 * @function 添加客户
	 * @return 结果处理
	 * @throws Exception
	 */
	public String add() throws Exception {
		custService.save(customer);
		return "toList";
	}
	
	/**
	 * @function 修改客户
	 * @return 结果处理
	 * @throws Exception
	 */
	public String edit() throws Exception {
		Customer cust = custService.getCustomerById(customer.getCust_id());
		ActionContext.getContext().put("customer", cust);
		return "edit";
	}
	
	/**
	 * @function 删除客户
	 * @return 结果处理
	 * @throws Exception
	 */
	public String delete() throws Exception {
		custService.delete(customer.getCust_id());
		return "toList";
	}

	public void setCustService(CustomerService custService) {
		this.custService = custService;
	}

}
