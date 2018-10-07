<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<style type=text/css>
body {
	font-size: 12px; color: #ffffff; font-family: 宋体
}
td {
	font-size: 12px; color: #ffffff; font-family: 宋体
}
</style>
<script type="text/javascript">
	//解决不期望页面嵌套在框架集中的问题
	//原理：判断页面窗体的父窗体是不是自己本身，若不是则表明页面窗体在框架集中
	window.onload = function(){
		if(window.parent != window){
			window.parent.location.href = "${pageContext.request.contextPath}/login.jsp";
		}
	}
</script>
</head>
<body>
	<form id=form1 name=form1 action="${pageContext.request.contextPath }/user_login" method=post>
		<div id=UpdatePanel1>
			<div id=div1 style="left: 0px; position: absolute; top: 0px; background-color: #0066ff"></div>
			<div id=div2 style="left: 0px; position: absolute; top: 0px; background-color: #0066ff"></div>
			<div>&nbsp;&nbsp; </div>
			<div>
				<table cellSpacing=0 cellPadding=0 width=900 align=center border=0>
					<tbody>
						<tr>
					    	<td style="height: 105px"><img src="images/login_1.gif" border=0></td>
					  	</tr>
					  	<tr>
						    <td background=images/login_2.jpg height=300>
							    <table height=300 cellPadding=0 width=900 border=0>
								    <tbody>
								        <tr><td colspan=2 height=35></td></tr>
								        <tr>
								        	<td width=360></td>
								          	<td>
									            <table cellSpacing=0 cellPadding=2 border=0>
										            <tbody>
										              	<tr>
											                <td style="height: 28px" width=80>登录名：</td>
											                <td style="height: 28px" width=150>
											                	<input id=txtName style="width: 130px" name=user_code>
											                </td>
											                <td style="height: 28px" width=370>
											                	<span id=RequiredFieldValidator3 style="font-weight: bold; visibility: hidden; color: white">请输入登录名</span>
											                </td>
										                </tr>
										              	<tr>
											                <td style="height: 28px">登录密码：</td>
											                <td style="height: 28px">
											                	<input id=txtPwd style="width: 130px" type=password name=user_password>
											                </td>
											                <td style="height: 28px">
											                	<span id=RequiredFieldValidator4 style="font-weight: bold; visibility: hidden; color: white">请输入密码</span>
											                </td>
										                </tr>
										              	<tr>
											                <td style="height: 28px">验证码：</td>
											                <td style="height: 28px">
											                	<input id=txtcode style="width: 130px" name=verifyCode>
											                </td>
											                <td style="height: 28px">&nbsp;</td>
										                </tr>
										             	<tr>
											                <td style="height: 18px"></td>
											                <td style="height: 18px">
											                	<span style="font-weight: bold;color: red"><s:property value="exception.message"/></span>
											                </td>
											                <td style="height: 18px"></td>
										                </tr>
											            <tr>
											                <td></td>
											                <td>
											                <input id=btn 
											                  style="border-top-width: 0px; border-left-width: 0px; border-bottom-width: 0px; border-right-width: 0px" 
											                  onclick='javascript:Webform_DoPostBackWithOptions(new Webform_PostBackOptions("btn", "", true, "", "", false, false))' 
											                  type=image src="images/login_button.gif" name=btn>
											              </td>
											            </tr>
										            </tbody>
									            </table>
								        	</td>
								    	</tr>
								    </tbody>
							    </table>
						    </td>
					    </tr>
						<tr>
						    <td><img src="images/login_3.jpg" border=0></td>
						</tr>
					</tbody>
				</table>
				<s:debug></s:debug>
			</div>
		</div>
	</form>
</body>
</html>