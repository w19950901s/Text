<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<HTML>
<HEAD>
<TITLE>北京出租房</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">

<link href="style/mycss.css" rel="stylesheet" type="text/css" />
<link href="style/texts.css" rel="stylesheet" type="text/css" />
<link href="style/btn.css" rel="stylesheet" type="text/css" />
<script   language="javascript">   
	function back(){
		window.history.back();
	}
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

			${user.uname }</font>
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
    <td width="495" align="center">

	<table width="450">
	  <tr>
		<td id=listTitle>${detail.title }</td>
	  </tr>
	  <tr>
	    <td id=listTitle><hr/></td>
	    </tr>
	  <tr>
		<td><strong>电话/手机：</strong>${detail.telephone }</td>
	  </tr>
	  <tr>
		<td><strong>联系人：</strong>${detail.lxr }</td>
	  </tr>
	  <tr>
		<td><strong>房屋类型：</strong>${detail.fwlx }</td>
	  </tr>
	  <tr>
		<td><strong>户型：</strong>${detail.shi }室${detail.ting }厅</td>
	  </tr>
	  <tr>
		<td><strong>价格：</strong>${detail.zj }元</td>
	  </tr>
	  <tr>
		<td><strong>地段：</strong>${detail.qx }&nbsp;&nbsp;${detail.jd }</td>
	  </tr>
	  <tr>
		<td><strong>发布时间：</strong> ${detail.date }</td>
	  </tr>
	  <tr>
		<td><hr></td>
	  </tr>
	  <tr>
		<td >${detail.fwxx }</td>
	  </tr>
	  <tr>
		<td><input type="button" value="后退" class="btn" onclick="back()"></td>
	  </tr>
	</table>

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