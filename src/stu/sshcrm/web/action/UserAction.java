package stu.sshcrm.web.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.opensymphony.xwork2.ModelDriven;

import stu.sshcrm.domain.User;
import stu.sshcrm.service.intf.UserService;

public class UserAction extends ActionSupport implements ModelDriven<User>{

	private static final long serialVersionUID = 1L;
	private UserService userService;
	private User user = new User();

	@Override
	public User getModel() {
		return user;
	}
	
	/**
	 * @function 用户登录
	 * @return 结果处理
	 * @throws Exception
	 */
	public String login() throws Exception {
		//0将用户传到业务层进行登录操作
		User u = userService.getUserByCode(user);
		//1将用户放在Session域
		ActionContext.getContext().getSession().put("user", u);
		//2登录成功重定向到首页
		return "toHome";
	}
	
	/**
	 * @function 用户注册
	 * @return 结果处理
	 * @throws Exception
	 */
	public String register() throws Exception {
		//0将用户传到业务层进行注册操作
		userService.save(user);
		//2注册成功重定向到登录页
		return "toLogin";
	}
	
	/**
	 * @function 修改密码
	 * @return 结果处理
	 * @throws Exception
	 */
	public String alterPsw() throws Exception {
		//0将用户传到业务层进行登录操作
		userService.updatePsw(user);
		//2修改成功重定向到登录页
		return "toLogin";
	}
	
	/**
	 * @function 安全退出
	 * @return 结果处理
	 * @throws Exception
	 */
	public String exit() throws Exception {
		//0将用户从Session域取出
		User u = (User) ActionContext.getContext().getSession().get("user");
		//1如果用户存在则删除
		if(u != null) {
			ActionContext.getContext().getSession().remove("user");
		}
		//2返回结果处理
		return "exit";
	}

	public void setUserService(UserService userService) {
		this.userService = userService;
	}

}
