
<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" isELIgnored="false"%>

<nav class="top ">
	<a href="forehome">
		<span style="color:#1F375B;margin:0px" class=" glyphicon glyphicon-home redColor"></span>
		影楼首页
	</a>

	<span>为您提供最优质的摄影服务</span>

	<c:if test="${!empty user}">
		<a href="loginPage">${user.name}</a>
		<a href="forelogout">退出</a>
	</c:if>

	<c:if test="${empty user}">
		<a href="loginPage">请登录</a>
		<a href="registerPage">免费注册</a>
	</c:if>


		<span class="pull-right">
			<a href="forebought">我的订单</a>
			<a href="forecart">
				<span style="color:#F06A4E;margin:0px" class=" glyphicon glyphicon-shopping-cart redColor"></span>
				购物车<strong>${cartTotalItemNumber}</strong>件</a>
		</span>
</nav>




