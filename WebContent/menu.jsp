<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN" "http://www.w3.org/tr/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>导航</title>
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
	font-size: 11px;
	color: #003366;
	font-family: Verdana
}

td {
	font-size: 11px;
	color: #003366;
	font-family: Verdana
}

div {
	font-size: 11px;
	color: #003366;
	font-family: Verdana
}

P {
	font-size: 11px;
	color: #003366;
	font-family: Verdana
}

.mainMenu {
	font-weight: bold;
	font-size: 14px;
	cursor: pointer;
	color: #000000
}

a.style2:link {
	padding-left: 4px;
	color: #0055bb;
	text-decoration: none
}

a.style2:visited {
	padding-left: 4px;
	color: #0055bb;
	text-decoration: none
}

a.style2:hover {
	padding-left: 4px;
	color: #ff0000;
	text-decoration: none
}

a.active {
	padding-left: 4px;
	color: #ff0000;
	text-decoration: none
}

.span {
	color: #ff0000;
}
</style>
<script type="text/javascript">
	function Menudisplay(obj_id) {
		for (var i = 1; i <= 9; i++) {
			var obj = document.getElementById('table_' + i);
			if(obj){
				document.getElementById('table_' + i).style.display = 'none';
				document.getElementById('table_' + i + 'span').innerText = '＋';
			}
			
		}
		var obj = document.getElementById(obj_id);
		if(obj){
			if (obj.style.display == 'none') {
				obj.style.display = 'block';
				document.getElementById(obj_id + 'span').innerText = '－';
			} else {
				obj.style.display = 'none';
				document.getElementById(obj_id + 'span').innerText = '＋';
			}
		}
		
	}
</script>
</head>
<body>
	<form id=form1 name=form1 action=YHMenu.aspx method=post>
		<table cellSpacing=0 cellPadding=0 width=210 align=center border=0>
			<tbody>
				<tr>
					<td width=15><img src="images/new_005.jpg" border=0></td>
					<td align=center width=180 background=images/new_006.jpg
						height=35><B>人力资源 －功能菜单</B></td>
					<td width=15><img src="images/new_007.jpg" border=0></td>
				</tr>
			</tbody>
		</table>
		<table cellSpacing=0 cellPadding=0 width=210 align=center border=0>
			<tbody>
				<tr>
					<td width=15 background=images/new_008.jpg></td>
					<td valign=top width=180 bgcolor=#ffffff>
						<table cellSpacing=0 cellPadding=3 width=165 align=center border=0>
							<tbody>
								<tr>
									<td class=mainMenu onClick="Menudisplay('table_1');"><span
										class=span id=table_1span>＋</span> 客户管理</td>
								</tr>
								<tr>
									<td>
										<table id=table_1 style="display: none" cellSpacing=0
											cellPadding=2 width=155 align=center border=0>
											<tbody>
												<tr>
													<td class=menuSmall><a class=style2 href="${pageContext.request.contextPath}/jsp/customer/add.jsp" 
														target=main>－ 新增客户</a></td>
												</tr>
												<tr> 
													<td class=menuSmall><a class=style2 href="${pageContext.request.contextPath}/cust_list"
														target=main>－ 客户列表</a></td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
								<tr>
									<td background=images/new_027.jpg height=1></td>
								</tr>
								<tr>
									<td class=mainMenu onClick="Menudisplay('table_2');"><span
										class=span id=table_2span>＋</span> 联系人管理</td>
								</tr>
								<tr>
									<td>
										<table id=table_2 style="display: none" cellSpacing=0
											cellPadding=2 width=155 align=center border=0>
											<tbody>
												<tr>
													<td class=menuSmall><a class=style2 href="${pageContext.request.contextPath}/lkm_prepareUI"
														target=main>－ 新增联系人</a></td>
												</tr>
												<tr>
													<td class=menuSmall><a class=style2 href="${pageContext.request.contextPath}/lkm_list"
														target=main>－联系人列表</a></td>
												</tr>			
											</tbody>
										</table>
									</td>
								</tr>
								<tr>
									<td background=images/new_027.jpg height=1></td>
								</tr>
								<tr>
									<td class=mainMenu onClick="Menudisplay('table_5');"><span
										class=span id=table_5span>＋</span> 客户拜访管理</td>
								</tr>
								<tr>
									<td>
										<table id=table_5 style="display: none" cellSpacing=0
											cellPadding=2 width=155 align=center border=0>
											<tbody>
												<tr>
													<td class=menuSmall><a class=style2 href="#"
														target=main>－新增客户拜访</a></td>
												</tr>
												<tr>
													<td class=menuSmall><a class=style2 href="#"
														target=main>－客户拜访列表</a></td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
								<tr>
									<td background=images/new_027.jpg height=1></td>
								</tr>
								<tr>
									<td class=mainMenu onClick="Menudisplay('table_3');"><span
										class=span id=table_3span>＋</span> 综合查询</td>
								</tr>
								<tr>
									<td>
										<table id=table_3 style="display: none" cellSpacing=0
											cellPadding=2 width=155 align=center border=0>
											<tbody>
												<tr>
													<td class=menuSmall><a class=style2 href="#"
														target=main>－ 客户信息查询</a></td>
												</tr>
												<tr>
													<td class=menuSmall><a class=style2 href="#"
														target=main>－ 联系人信息查询</a></td>
												</tr>
												<tr>
													<td class=menuSmall><a class=style2 href="#"
														target=main>－ 客户拜访记录查询</a></td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
								<tr>
									<td background=images/new_027.jpg height=1></td>
								</tr>
								<tr>
									<td class=mainMenu onClick="Menudisplay('table_4');"><span
										class=span id=table_4span>＋</span> 统计分析</td>
								</tr>
								<tr>
									<td>
										<table id=table_4 style="display: none" cellSpacing=0
											cellPadding=2 width=155 align=center border=0>
											<tbody>
												<tr>
													<td class=menuSmall><a class=style2 href="#"
														target=main>－客户行业统计</a></td>
												</tr>
												<tr>
													<td class=menuSmall><a class=style2 href="#"
														target=main>－客户来源统计</a></td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
								<tr>
									<td background=images/new_027.jpg height=1></td>
								</tr>
								<tr>
									<td class=mainMenu onClick="Menudisplay('table_6');"><span
										class=span id=table_6span>＋</span>系统管理</td>
								</tr>
								<tr>
									<td>
										<table id=table_6 style="display: none" cellSpacing=0
											cellPadding=2 width=155 align=center border=0>
											<tbody>
												<tr>
													<td class=menuSmall><a class=style2 href="#"
														target=main>－角色管理</a></td>
												</tr>
												<tr>
													<td class=menuSmall><a class=style2 href="#"
														target=main>－用户管理</a></td>
												</tr>
												<tr>
													<td class=menuSmall><a class=style2 href="#"
														target=main>－数据字典</a></td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
					<td width=15 background=images/new_009.jpg></td>
				</tr>
			</tbody>
		</table>
		<table cellSpacing=0 cellPadding=0 width=210 align=center border=0>
			<tbody>
				<tr>
					<td width=15><img src="images/new_010.jpg" border=0></td>
					<td align=center width=180 background=images/new_011.jpg
						height=15></td>
					<td width=15><img src="images/new_012.jpg" border=0></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>