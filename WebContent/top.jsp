<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>顶部</title>
<style type="text/css">
body {
	padding-right: 0px;
	padding-left: 0px;
	padding-bottom: 0px;
	margin: 0px;
	padding-top: 0px;
	background-color: #2a8dc8
}

body {
	font-size: 12px;
	color: #003366;
	font-family: Verdana, arial, Helvetica, sans-serif
}

td {
	font-size: 12px;
	color: #003366;
	font-family: Verdana, arial, Helvetica, sans-serif
}

body {
	font-size: 12px;
	color: #003366;
	font-family: Verdana, arial, Helvetica, sans-serif
}

P {
	font-size: 12px;
	color: #003366;
	font-family: Verdana, arial, Helvetica, sans-serif
}
</style>
</head>
<body>
	<form id=form1 name=form1 action="" method=post>
		<table cellSpacing=0 cellPadding=0 width="100%" border=0>
			<tbody>
				<tr>
					<td width=10><IMG src="images/new_001.jpg" border=0></td>
					<td background=images/new_002.jpg><font size=5><b>客户关系管理系统v1.0</b></font></td>
					<td background=images/new_002.jpg>
						<table cellSpacing=0 cellPadding=0 width="100%" border=0>
							<tbody>
								<tr>
									<td align=right height=35></td>
								</tr>
								<tr>
									<td height=35 align="right">
										<s:if test="#session.user eq null">
										<a href="${pageContext.request.contextPath }/login.jsp"><font color=red>请先登录</font></a>
										&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="${pageContext.request.contextPath }/register.jsp" target=main><font color=red>注册</font></a>
										</s:if>
										<s:else>当前用户：<s:property value="#session.user.user_name"/></s:else>
										&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="${pageContext.request.contextPath }/alterpsw.jsp?user_id=<s:property value="#session.user.user_id"/>" target=main><font color=red>修改密码</font></a>
										&nbsp;&nbsp;&nbsp;&nbsp;
										<a href="${pageContext.request.contextPath }/user_exit" target=_self><font color=red>安全退出</font></a>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
					<td width=10><IMG src="images/new_003.jpg" border=0></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>