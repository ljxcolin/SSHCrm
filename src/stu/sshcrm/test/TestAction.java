package stu.sshcrm.test;

import com.opensymphony.xwork2.Action;
import com.opensymphony.xwork2.ActionSupport;

public class TestAction extends ActionSupport {

	private static final long serialVersionUID = 1L;
	private TestService testService;
	
	public String test00() throws Exception {
		testService.test00();
		System.out.println(testService);
		return Action.NONE;
	}
	
	public String test01() throws Exception {
		testService.test01();
		return Action.NONE;
	}
	
	public String test02() throws Exception {
		testService.test02();
		return Action.NONE;
	}
	
	public String test03() throws Exception {
		testService.test03();
		return Action.NONE;
	}
	
	public String test04() throws Exception {
		testService.test04();
		return Action.NONE;
	}

	public void setTestService(TestService testService) {
		this.testService = testService;
	}
	
}
