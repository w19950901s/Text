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
    	  //当区县的下拉框发生改变的时候
    	  $("#qxid").change(function(){
    		  $.post( 
    			//就查询街道信息，同时传递过去一个街道ID，同时反馈过来一个街道的集合json数据
    			"jdAction!jdList",
    			{qxid:$(this).val()},
    			//回调函数
    			function(data){
    				var s = "";
    				for(var i=0;i<data.jdlist.length;i++){
    					s = s+"<option value='"+data.jdlist[i].jdid+"'>"+data.jdlist[i].jd+"</option>"
    				}
    				$("#jdid").html(s);//把option放在显示街道的下拉框中
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
    <td width="172" valign="top" align="center">

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

	<form action="userAction!login" method="post" name="myForm" onsubmit="return login()">
  	<p>&nbsp;</p>
	  <table align="center">
		<tr>
			<td colspan="2">用户名：</td>
		</tr>
		<tr>
		  <td colspan="2"><input type="text" name="user.uname" size=10" class="editbox"></td>
		</tr>
		<tr>
			<td colspan="2">密&nbsp;&nbsp;码：</td>
			</tr>
		<tr>
		  <td colspan="2"><input type="password" name="user.upass" size=10"  class='editbox'></td>
		  </tr>
		<tr>
			<td>
				<input type="hidden" name="sign" value="login"/>
				<input type="submit" value="登陆" class='btn'>
				<input type="reset" value="重置" class='btn'>
			</td>
		</tr>
		<tr>
		  <td><a href="reg.jsp">注册用户</a></td>
		</tr>
	  </table>
   </form>
</td>
    <td width="35" background="images/layout_24.gif">&nbsp;</td>
    <td width="495" align="center"><br/>
	<form action="searchAction!search" method="post" name="mf">
		<input type="hidden" name="currentPage" value="1"/>
		<input type="hidden" name="flag" value="0" />
<script>
function fswitch(id){
	var o = document.getElementById(id);
	if (o){
		if (o.style.display == "none"){ o.style.display = "block"; } else {o.style.display = "none";}
	}
}
</script>
				<div style="text-align:left;width:88%;">
					<input name="title">
					<input type="submit" value="查询" class="btn"> <span onclick="fswitch('advSearch');" style="cursor:hand;color:blue;">高级搜索</span>
				</div>

		<table width="88%;" id="advSearch" style="border:solid 0px #000;display:none;">
			
<tr>
				<td>区县：</td>
				<td><select id="qxid" name="qxid" style="width:80">
					<option value='0'>不限--</option>
					<c:forEach items="${qxlist }" var="qx">
				<option value='${qx.qxid }'>${qx.qx }</option>
					</c:forEach>
				</select></td>
				<td rowspan="6">&nbsp;</td>
			</tr>
			<tr>
				<td>街道：</td>
				<td><select id="jdid" name="jdid" style="width:80">
					<option value="0">不限--</option>
				</select></td>
			</tr>
			<tr>
				<td>租金：</td>
				<td><input type="text" name="zj_low" size="5" class="unnamed1" > 至 <input type="text" name="zj_high" size="5" class="unnamed1" > 元/月</td>
			</tr>
			<tr>
				<td>户型：</td>
				<td><select name="shi" style="width:60">
					<option value="0">不限--</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
					<option value="6">6</option>
					<option value="7">7</option>
					<option value="8">8</option>
					<option value="9">9</option>
				</select>室 <select name="ting" style="width:60">
					<option value="0">不限--</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="5">5</option>
				</select> 厅</td>
			</tr>
			<tr>
				<td>房屋类型：</td>
				<td>
				<c:forEach items="${fwlxlist }" var="fwlx">
				<input type="checkbox" name="lxid" value="${fwlx.lxid }">${fwlx.fwlx }
				</c:forEach>
				</td>
			</tr>
			<tr>
				<td>发布日期：</td>
				<td><select name="date" style="width:80">
					<option value="0">不限--</option>
					<option value="1">当天</option>
					<option value="2">近两天</option>
					<option value="3">近三天</option>
					<option value="7">近一周</option>
					<option value="14">近两周</option>
					<option value="30">近一月</option>
				</select></td>
			</tr>
<tr>
					<td colspan='3'><hr/></td>
				</tr>

</table>
<table width="88%" cellspacing="0">
				<tr  >
					<TD width='250' class="table_title">标题</TD>
					<TD width='90' align='center' class="table_title">月租金</TD>
					<TD align='center' class="table_title">发布日期</TD>
				</tr>
				
				<c:forEach items="${p.list }" var="fwxx">
				<tr>
					<td><a href='detailAction!detail?fwid=${fwxx.fwid }'>${fwxx.title }</a></td>
					<td align='center' style='height:30px;'>${fwxx.zj }元</td>
					<td align='center'>${fwxx.date }</td>
				</tr>
				</c:forEach>
				
				<tr>
					<td colspan='3'><hr/></td>
				</tr>
				<tr>
					<td colspan='3'>
					总条数:${p.allSizes }&nbsp;|&nbsp;总页数:${p.allPages }&nbsp;  
					<c:forEach begin="1" end="${p.allPages }" var="i">
					第<a href="HouseAction?currentPage=${i }">${i }</a>页
					</c:forEach>
					<a href="HouseAction?currentPage=1">首页</a>&nbsp;&nbsp;
					<a href="HouseAction?currentPage=${p.currentPage-1<=0?1:p.currentPage-1 }">上一页</a>&nbsp;&nbsp;  
					<a href="HouseAction?currentPage=${p.currentPage+1>p.allPages?p.allPages:p.currentPage+1 }">下一页</a>&nbsp;&nbsp;
					<a href="HouseAction?currentPage=${p.allPages }">尾页</a>
					</td>
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