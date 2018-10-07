<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN" "http://www.w3.org/tr/html4/loose.dtd">
<html>
<head>
<title>添加联系人</title> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<link href="${pageContext.request.contextPath }/css/Manage.css" type=text/css rel=stylesheet>
<meta content="MSHTML 6.00.2900.3492" name=GENERATOR>
</head>
<body>
	<form id=form1 name=form1 action="${pageContext.request.contextPath }/lkm_add" method=post>
		<table cellSpacing=0 cellPadding=0 width="98%" border=0>
			<tbody>
				<tr>
					<td width=15><img src="${pageContext.request.contextPath }/images/new_019.jpg"
						border=0></td>
					<td width="100%" background="${pageContext.request.contextPath }/images/new_020.jpg"
						 height=20></td>
					<td width=15><img src="${pageContext.request.contextPath }/images/new_021.jpg"
						border=0></td>
				</tr>
			</tbody>
		</table>
		<table cellSpacing=0 cellPadding=0 width="98%" border=0>
			<tbody>
				<tr>
					<td width=15 background="${pageContext.request.contextPath }/images/new_022.jpg"><img
						src="${pageContext.request.contextPath }/images/new_022.jpg" border=0></td>
					<td vAlign=top width="100%" bgColor=#ffffff>
						<table cellSpacing=0 cellPadding=5 width="100%" border=0>
							<tr>
								<td class=manageHead>当前位置：联系人管理 &gt; 添加联系人</td>
							</tr>
							<tr>
								<td height=2></td>
							</tr>
						</table>
						<table cellSpacing=0 cellPadding=5  border=0>
							<tr>
								<td>所属客户：</td>
								<td colspan="3">
								<select name="cust_id" style="width: 180px">
									<option value="">---请选择客户---</option>
									<s:iterator value="#customers">
									<option value='<s:property value="cust_id"/>'><s:property value="cust_name"/></option>
									</s:iterator>
								</select>
								</td>
							</tr>
							<tr>
								<td>联系人名称：</td>
								<td>
								<input class=text id=sChannel2 style="width: 180px" maxLength=50 name="lkm_name">
								</td>
							</tr>
							<tr>
								<td>联系人性别：</td>
								<td>
								<input type="radio" value="1" name="lkm_gender">男
								<input type="radio" value="2" name="lkm_gender">女
								</td>
							</tr>
							<tr>
								<td>联系人办公电话 ：</td>
								<td>
								<input class=text id=sChannel2 style="width: 180px" maxLength=50 name="lkm_phone">
								</td>
							</tr>
							<tr>
								<td>联系人手机 ：</td>
								<td>
								<input class=text id=sChannel2 style="width: 180px" maxLength=50 name="lkm_mobile">
								</td>
							</tr>
							<tr>
								<td rowspan=2>
								<input class=button id=sButton2 type=submit value="Save">
								</td>
							</tr>
						</table>						
					</td>
					<td width=15 background="${pageContext.request.contextPath }/images/new_023.jpg">
					<img src="${pageContext.request.contextPath }/images/new_023.jpg" border=0></td>
				</tr>
			</tbody>
		</table>
		<table cellSpacing=0 cellPadding=0 width="98%" border=0>
			<tbody>
				<tr>
					<td width=15><img src="${pageContext.request.contextPath }/images/new_024.jpg"
						border=0></td>
					<td align=center width="100%"
						background="${pageContext.request.contextPath }/images/new_025.jpg" height=15></td>
					<td width=15><img src="${pageContext.request.contextPath }/images/new_026.jpg"
						border=0></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>
