<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN" "http://www.w3.org/tr/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>修改密码</title>
<link href="css/Style.css" type=text/css rel=stylesheet>
<link href="css/Manage.css" type=text/css rel=stylesheet>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<style type="text/css">
label {
	display: inline-block;
	width: 80px;
	font-size: 14px;
	text-align: left;
}
input {
	display: inline-block;
	margin: 5px;
	font-size: 14px;
	line-height: 18px;
}
</style>
</head>
<body>
	<table cellSpacing=0 cellPadding=0 width="98%" border=0>
		<tbody>
			<tr>
				<td width=15><img src="images/new_019.jpg"
				border=0></td>
				<td width="100%" background=images/new_020.jpg
				height=20></td>
				<td width=15><img src="images/new_021.jpg"
				border=0></td>
			</tr>
		</tbody>
	</table>
	<table cellSpacing=0 cellPadding=0 width="98%" border=0>
		<tbody>
			<tr>
				<td width=15 background=images/new_022.jpg>
					<img src="images/new_022.jpg" border=0>
			   	</td>	   	
				<td align="center" bgColor=#ffffff>
					<table width="100%" border="0" cellpadding="0" cellspacing="0">
						<tr>
							<td class=manageHead style="height:20px">当前位置：用户管理 &gt; 修改密码</td>
						</tr>
						<tr>
							<td align="center">
								<s:form namespace="/" action="user_alterPsw" method="post">
									<input type="hidden" value="${param.user_id }" name="user_id"/>
									<s:textfield label="新密码" name="user_password"></s:textfield>
									<s:submit></s:submit>
								</s:form>
							</td>
						</tr>
					</table>
				</td>
				<td width=15 background=images/new_023.jpg>
					<img src="images/new_023.jpg" border=0>
				</td>
			</tr>
		</tbody>
	</table>
	<table cellSpacing=0 cellPadding=0 width="98%" border=0>
		<tbody>
			<tr>
				<td width=15><img src="images/new_024.jpg"
				border=0></td>
				<td align=center width="100%"
				background=images/new_025.jpg height=15></td>
				<td width=15><img src="images/new_026.jpg"
				border=0></td>
			</tr>
		</tbody>
	</table>
</body>
</html>