package stu.sshcrm.web.filter;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;

/**
 * Generic Encoding Solution
 * @author Lijinxuan
 *
 */
public class GenericEncodingFilter implements Filter {
	public void destroy() {
	}

	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		//0转型为与协议相关对象
		HttpServletRequest httpServletRequest = (HttpServletRequest) request;
		//1对request包装增强
		HttpServletRequest myrequest = new MyRequest(httpServletRequest);
		chain.doFilter(myrequest, response);
	}

	public void init(FilterConfig filterConfig) throws ServletException {
	}

}

//——自定义request对象
class MyRequest extends HttpServletRequestWrapper {

	private HttpServletRequest request;

	private boolean hasEncode;

	public MyRequest(HttpServletRequest request) {
		super(request);//super必须写
		this.request = request;
	}

	//0对需要增强方法进行覆盖
	@Override
	public Map<String,String[]> getParameterMap() {
		//0.1先获得请求方式
		String method = request.getMethod();
		if (method.equalsIgnoreCase("post")) {
			// post请求
			try {
				//0.2处理post乱码
				request.setCharacterEncoding("UTF-8");
				return request.getParameterMap();
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		} else if (method.equalsIgnoreCase("get")) {
			// get请求
			Map<String, String[]> parameterMap = request.getParameterMap();
			if (!hasEncode) { // 确保get手动编码逻辑只运行一次
				for (String parameterName : parameterMap.keySet()) {
					String[] values = parameterMap.get(parameterName);
					if (values != null) {
						for (int i = 0; i < values.length; i++) {
							try {
								//0.3处理get乱码
								values[i] = new String(values[i].getBytes("ISO-8859-1"), "UTF-8");
							} catch (UnsupportedEncodingException e) {
								e.printStackTrace();
							}
						}
					}
				}
				hasEncode = true;
			}
			return parameterMap;
		}

		return super.getParameterMap();
	}

	@Override
	public String getParameter(String name) {
		Map<String, String[]> parameterMap = getParameterMap();
		String[] values = parameterMap.get(name);
		if (values == null) {
			return null;
		}
		return values[0]; //0取回参数的第一个值
	}

	@Override
	public String[] getParameterValues(String name) {
		Map<String, String[]> parameterMap = getParameterMap();
		String[] values = parameterMap.get(name);
		return values;
	}

}