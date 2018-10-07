package stu.sshcrm.dao.impl;

import java.util.List;
import org.hibernate.criterion.DetachedCriteria;
import org.springframework.orm.hibernate5.support.HibernateDaoSupport;

import stu.sshcrm.dao.intf.LinkManDao;
import stu.sshcrm.domain.LinkMan;

public class LinkManDaoImpl extends HibernateDaoSupport implements LinkManDao {

	@Override
	public void save(LinkMan lkm) {
		getHibernateTemplate().saveOrUpdate(lkm);
	}

	@Override
	public List<LinkMan> getLinkMen(DetachedCriteria dc) {
		@SuppressWarnings("unchecked")
		List<LinkMan> linkMen = (List<LinkMan>) getHibernateTemplate().findByCriteria(dc);
		return linkMen;
	}

	@Override
	public LinkMan getLinkManById(Long lkm_id) {
		return getHibernateTemplate().get(LinkMan.class, lkm_id);
	}

	@Override
	public void delete(Long lkm_id) {
		getHibernateTemplate().delete(getHibernateTemplate().get(LinkMan.class, lkm_id));
	}

}
