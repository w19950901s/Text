<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<HTML>
<HEAD>
<TITLE>北京出租房</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">
<script type="text/javascript" src="js/jquery-1.8.3.min.js"></script>
<link href="style/mycss.css" rel="stylesheet" type="text/css" />
<link href="style/texts.css" rel="stylesheet" type="text/css" />
<link href="style/btn.css" rel="stylesheet" type="text/css" />
<script language="javascript">
	$(function(){
		$("#qxid").change(function(){
			$.post(
					"jdAction!jdList",
					{qxid:$(this).val()},
					function(data){
						var s = "";
						for(var i = 0;i<data.jdlist.length;i++){
							s=s+"<option value='"+data.jdlist[i].jdid+"'>"+data.jdlist[i].jd+"</option>"
						}
						$("#jdid").html(s);
					},
					"json"		
			);
		});
		
	});
</script>
</HEAD>
<BODY BGCOLOR=#FFFFFF LEFTMARGIN=0 TOPMARGIN=0 MARGINWIDTH=0 MARGINHEIGHT=0>

<table width="780" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="5"></td>
  </tr>
  <tr>
    <td colspan="5"><img src="images/middle1.jpg" width="780" height="47"></td>
  </tr>
  <tr>
    <td width="38" background="images/middle2.jpg">&nbsp;</td>
    <td width="172" valign="top">

<script language="javascript">
<!--
	function login(){
		if( document.myForm.uname.value =="" ){
			alert("用户名不能为空");
			return false;
		}else if(document.myForm.upass.value == ""){
			alert("密码不能为空");
			return false;
		} else {
			return true;
		}
	}
-->
</script>

	<table align="center">
	<tr>
		<td width=''><font color='red'>当前用户：

			${user.uname } </font>
		</td>
	</tr>
	<tr>
		<td width='150'><a href="postAction!postFwxx?currentPage=1">管理我的租房信息</a></td>
	</tr>
	<tr>
		<td width='100'><a href="userAction!isLogin">发布租房信息</a></td>
	</tr>
	<tr>
		<td width='100'><a href="index.jsp">返回首页</a></td>
	</tr>
	<tr>
		<td width='100'><a href="userAction!logOut">[注销]</a></td>
	</tr>
	</table>
</td>
    <td width="35" background="images/layout_24.gif">&nbsp;</td>
    <td width="495">

	<form action="postAction!addPost" method="post" name="mf" onsubmit="return validateTitle()">
		<input type="hidden" name="fw.uid" value="${user.uid }"/>
		<table>
			<tr>
				<td colspan="2">发布租房信息：</td>
			</tr>
			<tr>
				<td colspan="2"><hr/></td>
			</tr>
			<tr>
			  <td><strong>标题：</strong></td>
				<td><input type="text" name="fw.title"></td>
			</tr>
			<tr>
			  <td><strong>区县：</strong></td>
				<td><select name="fw.qxid" id="qxid">
					<option value='0'>不限--</option>
					<c:forEach items="${qxlist }" var="qx">
						<option value='${qx.qxid }'>${qx.qx }</option>
					</c:forEach>

				</select></td>
			</tr>
			<tr>
			  <td><strong>街道：</strong></td>
				<td><select name="fw.jdid" id="jdid">
					<option value="0">不限--</option>
				</select></td>
			</tr>
			<tr>
			  <td><strong>租金：</strong></td>
				<td><input type="text" name="fw.zj"/>元/月</td>
			</tr>
			<tr>
			  <td><strong>户型：</strong></td>
				<td><select name="fw.shi"">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
				</select>室<select name="fw.ting">
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
				</select>厅</td>
			</tr>
			<tr>
			  <td><strong>房屋类型：</strong></td>
				<td><select name="fw.lxid">
					<option value='0'>不限--</option>
					<c:forEach items="${lxlist }" var="lx">
					<option value='${lx.lxid }'>${lx.fwlx }</option>
					</c:forEach>

				</select></td>
			</tr>
			<tr>
			  <td><strong>联系电话：</strong></td>
				<td><input type="text" name="fw.telephone"></td>
			</tr>
			<tr>
			  <td><strong>联系人：</strong></td>
				<td><input type="text" name="fw.lxr"></td>
			</tr>
			<tr>
			  <td><strong>房屋信息：</strong></td>
				<td><textarea name="fw.fwxx" rows="10" cols="40"></textarea></td>
			</tr>
			<tr>
				<td colspan="2">
				<div align="center"><input type="submit" value="提交" class="btn"></div>				</td>
			</tr>
		</table>
	</form>
	</td>
    <td width="40" background="images/middle4.jpg">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="5"><img src="images/bottom.jpg" width="780" height="82"></td>
  </tr>
</table>
<P align="center">2017 yinhe 版权所有</P>
<br/>
</BODY>
</HTML>