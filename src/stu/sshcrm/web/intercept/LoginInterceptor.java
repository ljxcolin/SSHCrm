package stu.sshcrm.web.intercept;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionInvocation;
import com.opensymphony.xwork2.interceptor.MethodFilterInterceptor;

public class LoginInterceptor extends MethodFilterInterceptor {

	private static final long serialVersionUID = 1L;

	@Override
	protected String doIntercept(ActionInvocation invocation) throws Exception {
		//0从Session域中获取登录标识（用户）
		Object user = ActionContext.getContext().getSession().get("user");
		//1判断用户是否已存在（已登录）
		if(user == null) { //用户未登录
			//2、重定向至登录页面
			return "toLogin";
		}
		//用户已登录，放行
		return invocation.invoke();
	}

}
