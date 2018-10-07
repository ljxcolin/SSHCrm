package stu.sshcrm.dao.intf;

import java.util.List;

import org.hibernate.criterion.DetachedCriteria;

import stu.sshcrm.domain.LinkMan;

public interface LinkManDao {

	void save(LinkMan lkm);

	List<LinkMan> getLinkMen(DetachedCriteria dc);

	LinkMan getLinkManById(Long lkm_id);

	void delete(Long lkm_id);
	
}
