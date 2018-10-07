package stu.sshcrm.service.intf;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import stu.sshcrm.domain.LinkMan;

public interface LinkManService {

	void save(LinkMan lkm);
	
	void delete(Long lkm_id);

	List<LinkMan> getLinkMen(DetachedCriteria dc);

	LinkMan getLinkManById(Long lkm_id);
	
}
