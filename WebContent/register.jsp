<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN" "http://www.w3.org/tr/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
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
<script type="text/javascript">
	window.onload = function(){
		var errorMsg = "${exception.message}";
		debugger;
		if(errorMsg != ""){
			$("#tip").css("display","inline");
			$("#tip").text(errorMsg);	
		}
	}
	
	function register(){
		var code = $("#code").val().trim();
		var name = $("#name").val().trim();
		var psw = $("#psw").val().trim();
		var repsw = $("#repsw").val().trim();
		var tip = $("#tip");
		if(code == ""){
			$(tip).css("display","inline");
			$(tip).text("用户名不能为空！");
			return;
		}
		if(name == ""){
			$(tip).css("display","inline");
			$(tip).text("真实姓名不能为空！");
			return;
		}
		if(psw == ""){
			$(tip).css("display","inline");
			$(tip).text("密码不能为空！");
			return;
		}
		if(repsw == "" || repsw != psw){
			$(tip).css("display","inline");
			$(tip).text("两次密码输入不一致！");
			return;
		}
		$("#regist").attr("action","${pageContext.request.contextPath}/user_register").submit();
	}
</script>
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
							<td class=manageHead style="height:20px">当前位置：用户管理 &gt; 用户注册</td>
						</tr>
						<tr>
							<td align="center">
								<form id="regist" action="#" method="post">
									<label>用户名：</label><input type="text" name="user_code" id="code"/><br>
									<label>真实姓名：</label><input type="text" name="user_name" id="name"/><br>
									<label>密码：</label><input type="password" name="user_password" id="psw"/><br>
									<label>确认密码：</label><input type="password" id="repsw"/><br>
									<label></label><span id="tip" style="display:none;color:red"></span><br>
									<input type="button" value="注册" onclick="register()"/>
								</form>
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