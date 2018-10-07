<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html PUBLIC "-//W3C//Dtd HTML 4.01 transitional//EN" "http://www.w3.org/tr/html4/loose.dtd">
<html>
<head>
<title>联系人列表</title> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath }/css/Style.css" type=text/css rel=stylesheet>
<link href="${pageContext.request.contextPath }/css/Manage.css" type=text/css rel=stylesheet>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery-1.11.3.min.js"></script>
<script language=javascript>
	function to_page(page){
		if(page){
			$("#page").val(page);
		}
		document.customerform.submit();	
	}
	function delLinkMan(id,name){
		if(confirm('您确定删除名为"' + name + '"的联系人吗？')){
			window.location.href = "${pageContext.request.contextPath }/lkm_delete?lkm_id=" + id;
		}
	}
</script>
<meta content="MSHTML 6.00.2900.3492" name=GENERATOR>
</head>
<body>
	<form id="customerform" name="customerform" action="${pageContext.request.contextPath }/lkm_list" method=post>
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
					<td vAlign=top width="100%" bgcolor=#ffffff>
						<table cellSpacing=0 cellPadding=5 width="100%" border=0>
							<tr>
								<td class=manageHead>当前位置：联系人管理 &gt; 联系人列表</td>
							</tr>
							<tr>
								<td height=2></td>
							</tr>
						</table>
						<table bordercolor=#cccccc cellSpacing=0 cellPadding=0
							width="100%" align=center border=0>
							<tbody>
								<tr>
									<td height=25>
										<table cellSpacing=0 cellPadding=2 border=0>
											<tbody>
												<tr>
													<td>联系人名称：</td>
													<td><input class=text id=sChannel2 style="width: 80px" maxLength=50 name="lkm_name"></td>
													<td><input class=button id=sButton2 type=submit value=" 筛选 "></td>
												</tr>
											</tbody>
										</table>
									</td>
								</tr>
								<tr>
									<td>
										<table id=grid
											style="border-top-width: 0px; font-weight: normal; border-left-width: 0px; border-left-color: #cccccc; border-bottom-width: 0px; border-bottom-color: #cccccc; width: 100%; border-top-color: #cccccc; font-style: normal; background-color: #cccccc; border-right-width: 0px; text-decoration: none; border-right-color: #cccccc"
											cellSpacing=1 cellPadding=2 rules=all border=0>
											<tbody>
												<tr style="font-weight: bold; font-style: normal; background-color: #eeeeee; text-decoration: none">
													<td>联系人名称</td>
													<td>性别</td>
													<td>办公电话</td>
													<td>手机</td>
													<td>操作</td>
												</tr>
												<s:iterator value="#linkmen">
												<tr style="font-weight: normal; font-style: normal; background-color: white; text-decoration: none">
													<td><s:property value="lkm_name"/></td>
													<td><s:property value="lkm_gender"/></td>
													<td><s:property value="lkm_phone"/></td>
													<td><s:property value="lkm_mobile"/></td>
													<td>
													<a href="${pageContext.request.contextPath }/lkm_prepareUI?lkm_id=<s:property value="lkm_id"/>">修改</a>
													&nbsp;&nbsp;
													<a href="javascript:void(0);" onclick="delLinkMan('<s:property value="lkm_id"/>','<s:property value="lkm_name"/>')">删除</a>
													</td>
												</tr>
												</s:iterator>
											</tbody>
										</table>
									</td>
								</tr>
								<tr>
									<td><div id=pagelink>
											<span style="line-height: 20px; height: 20px; text-align: right">
												共【<b>${total}</b>】条记录，【<b>${totalPage}</b>】页，每页显示
												<select name="pageSize">
												<option value="15" <c:if test="${pageSize==1 }">selected</c:if>>1</option>
												<option value="30" <c:if test="${pageSize==30 }">selected</c:if>>30</option>
												</select>条
												【<a href="javascript:to_page(${page-1})">前一页</a>】
												<b>${page}</b>
												【<a href="javascript:to_page(${page+1})">后一页</a>】 
												到<input type="text" size="3" id="page" name="page"/>页
												<input type="button" value="Go" onclick="to_page()"/>
											</span>
										</div>
									</td>
								</tr>
							</tbody>
						</table>
					</td>
					<td width=15 background="${pageContext.request.contextPath }/images/new_023.jpg"><img
						src="${pageContext.request.contextPath }/images/new_023.jpg" border=0></td>
				</tr>
			</tbody>
		</table>
		<table cellSpacing=0 cellPadding=0 width="98%" border=0>
			<tbody>
				<tr>
					<td width=15><img src="${pageContext.request.contextPath }/images/new_024.jpg"
						border=0></td>
					<td align="center" width="100%"
						background="${pageContext.request.contextPath }/images/new_025.jpg" height=15></td>
					<td width=15><img src="${pageContext.request.contextPath }/images/new_026.jpg"
						border=0></td>
				</tr>
			</tbody>
		</table>
	</form>
</body>
</html>
