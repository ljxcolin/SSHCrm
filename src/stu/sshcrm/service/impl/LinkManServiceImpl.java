package stu.sshcrm.service.impl;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import stu.sshcrm.dao.intf.CustomerDao;
import stu.sshcrm.dao.intf.LinkManDao;
import stu.sshcrm.service.intf.LinkManService;
import stu.sshcrm.domain.Customer;
import stu.sshcrm.domain.LinkMan;

public class LinkManServiceImpl implements LinkManService {

	private LinkManDao lkmDao;
	private CustomerDao custDao;
	
	@Override
	public void save(LinkMan lkm) {
		//设置关系（联系人维护关系）
		Customer customer = custDao.getCustomerById(lkm.getCust_id());
		lkm.setCustomer(customer);
		lkmDao.save(lkm);
	}

	@Override
	public List<LinkMan> getLinkMen(DetachedCriteria dc) {
		return lkmDao.getLinkMen(dc);
	}

	@Override
	public LinkMan getLinkManById(Long lkm_id) {
		return lkmDao.getLinkManById(lkm_id);
	}

	@Override
	public void delete(Long lkm_id) {
		lkmDao.delete(lkm_id);
	}
	
	public void setLkmDao(LinkManDao lkmDao) {
		this.lkmDao = lkmDao;
	}

	public void setCustDao(CustomerDao custDao) {
		this.custDao = custDao;
	}

}
