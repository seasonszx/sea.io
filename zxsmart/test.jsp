<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="com.gforce.smart.util.Base64"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String vkey = request.getParameter("vkey");
if(vkey!=null && Base64.decryptMoreToOne(vkey).equalsIgnoreCase("seasonszx.com")){
	%>
	<div style="margin-top: 200px;padding-left: 300px">
	<form action="<%=basePath %>/goLogin_User.action" method="post">
	恭喜您验证通过	请注意一下几点：
	<span style="color: red">
	<br/>
	1，给您已开放最高系统管理员权限
	<br/>
	2，请勿胡乱删除一些系统数据，不然无法正常使用，开发人员都懂得
	<br/>
	3，默认流程中涉及的所有用户的密码都已经发送至您的邮箱便于各位测试流程，这些用户账户请勿修改密码
	<br/>
	4，在线用户菜单有强制用户下线功能，若有其他用户在线，请不要影响他人的体验
	<br/>
	</span> 
	<input type="submit" value="进入系统"/>
	</form>
	</div>
	<%
}else{
	String res = "";
	if(vkey!=null){
	if(vkey.length()==0){
		res = "什么都不填！都是开发人员你耍我？？";
	}else{
		res = "体验码错误！请在我给你发的邮件中找！";
	}}
	%>
	<div style="margin-top: 300px;text-align: center;">
	<form action="<%=basePath %>/test.jsp" method="post">
	恭喜您获得平台试用账号，为了验证您的试用身份<br/>
	请输入体验码:<input type="text" name="vkey" id="vkey" size="100"/>
	<input type="submit" value="提交"/>
	<br/>
	体验码在管理员给你发送的邮件中.
	<br/>
	<span style="color: red"><%=res %></span> 
	</form>
	</div>
	<%
}
%>

