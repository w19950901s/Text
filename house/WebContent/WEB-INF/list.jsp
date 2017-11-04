<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<HTML>
<HEAD>
<TITLE>北京出租房</TITLE>
<meta http-equiv="Content-Type" content="text/html; charset=GBK">

<link href="style/mycss.css" rel="stylesheet" type="text/css" />
<link href="style/texts.css" rel="stylesheet" type="text/css" />
<link href="style/btn.css" rel="stylesheet" type="text/css" />

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
		<td width='150'><a href="01.jsp" onclick="return confirm('请您先登录')；">管理我的租房信息</a></td>
	</tr>
	<tr>
		<td width='100'><a href="01.jsp">发布租房信息</a></td>
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
	<table>
		<tr>
			<td width="3%">&nbsp;</td>
			<td width="97%">
			
			
			
			<table>
				<tr>
					<TD width='250'>标题</TD>
					<TD width='90' align='center'>月租金</TD>
					<TD align='center'>发布日期</TD>
				</tr>
				<tr>
					<td colspan='3'><hr/></td>
				</tr>
				<c:forEach items="${p.list }" var="search">
				<tr>
					<td><a href='detailAction!detail?fwid=${search.fwid }'>${search.title }</a></td>
					<td align='center' style='height:30px;'>${search.zj }元</td>
					<td align='center'>${search.date }</td>
				</tr>
				</c:forEach>
		
				<tr>
					<td colspan='3'><hr/></td>
				</tr>
				
				<tr>
					<td colspan='3'>
					总条数:${p.allSizes }&nbsp;|&nbsp;总页数:${p.allPages }&nbsp;  
					<c:forEach begin="1" end="${p.allPages }" var="i">
					第<a href="searchAction!search?currentPage=${i }">${i }</a>页
					</c:forEach>
					<a href="searchAction!search?currentPage=1">首页</a>&nbsp;&nbsp;
					<a href="searchAction!search?currentPage=${p.currentPage-1<=0?1:p.currentPage-1 }&flag=1">上一页</a>&nbsp;&nbsp;  
					<a href="searchAction!search?currentPage=${p.currentPage+1>p.allPages?p.allPages:p.currentPage+1 }&flag=1">下一页</a>&nbsp;&nbsp;
					<a href="searchAction!search?currentPage=${p.allPages }">尾页</a>
					</td>
				</tr>
				
			</table>
			
			</td>
		</tr>
		<tr>
			<td colspan="2"></td>
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