package stu.sshcrm.web.action;

import java.util.List;

import org.apache.commons.lang3.StringUtils;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Restrictions;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import stu.sshcrm.domain.Customer;
import stu.sshcrm.domain.LinkMan;
import stu.sshcrm.service.intf.CustomerService;
import stu.sshcrm.service.intf.LinkManService;

public class LinkManAction extends ActionSupport implements ModelDriven<LinkMan>{

	private static final long serialVersionUID = 1L;
	private CustomerService custService;
	private LinkManService lkmService;
	private LinkMan lkm = new LinkMan();
	
	@Override
	public LinkMan getModel() {
		return lkm;
	}
	
	/**
	 * @function 联系人列表
	 * @return 结果处理
	 * @throws Exception
	 */
	public String list() throws Exception {
		//0接收参数
		String lkm_name = lkm.getLkm_name();
		//1创建离线查询对象并拼接条件
		DetachedCriteria dc = DetachedCriteria.forClass(LinkMan.class);
		if(StringUtils.isNotBlank(lkm_name)) {
			dc.add(Restrictions.like("lkm_name", "%" + lkm_name.trim() + "%"));
		}
		List<LinkMan> linkmen = lkmService.getLinkMen(dc);
		ActionContext.getContext().put("linkmen", linkmen);
		return "list";
	}
	
	/**
	 * @function 为添加或修改联系人准备数据
	 * @return 结果处理
	 * @throws Exception
	 */
	public String prepareUI() {
		List<Customer> customers = custService.getAllCustomers();
		ActionContext.getContext().put("customers", customers);
		if(lkm.getLkm_id() == null) {
			return "addUI";
		}
		LinkMan linkman = lkmService.getLinkManById(lkm.getLkm_id());
		ActionContext.getContext().put("linkman", linkman);
		return "editUI";
	}
	
	/**
	 * @function 添加或修改联系人
	 * @return 结果处理
	 * @throws Exception
	 */
	public String add() throws Exception {
		lkmService.save(lkm);
		return "toList";
	}
	
	/**
	 * @function 删除联系人
	 * @return 结果处理
	 * @throws Exception
	 */
	public String delete() throws Exception {
		lkmService.delete(lkm.getLkm_id());
		return "toList";
	}

	public void setCustService(CustomerService custService) {
		this.custService = custService;
	}

	public void setLkmService(LinkManService lkmService) {
		this.lkmService = lkmService;
	}

}
