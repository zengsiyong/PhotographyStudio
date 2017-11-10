<!-- 模仿天猫整站j2ee 教程 为how2j.cn 版权所有-->
<!-- 本教程仅用于学习使用，切勿用于非法用途，由此引起一切后果与本站无关-->
<!-- 供购买者学习，请勿私自传播，否则自行承担相关法律责任-->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*"%>
 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>



<title>编辑分类</title>


<script>
$(function(){
	
	$("#editForm").submit(function(){
		if(!checkEmpty("name","分类名称"))
			return false;

		return true;
	});
});

</script>

<div class="workingArea">
	<%-- 使用前端框架的面包屑导航样式--%>
	<ol class="breadcrumb">
	  <li><a href="admin_category_list">所有分类</a></li>
	  <li class="active">编辑分类</li>
	</ol>

	<div class="panel panel-success editDiv">
	  <div class="panel-heading">编辑分类</div>
	  <div class="panel-body">
		  	<%--method="post" 用于提交中文，enctype="multipart/form-data" 用于提交二进制文件（图片）--%>
	    	<form method="post" id="editForm" action="admin_category_update"  enctype="multipart/form-data">
	    		<table class="editTable">
	    			<tr>
	    				<td>分类名称</td>
	    				<td><input  id="name" name="name" value="${c.name}" type="text" class="form-control"></td>
	    			</tr>
	    			<tr>
	    				<td>分类图片</td>
	    				<td>
	    					<input id="categoryPic" accept="image/*" type="file" name="filepath" />
	    				</td>
	    			</tr>	    			
	    			<tr class="submitTR">
	    				<td colspan="2" align="center">
	    					<input type="hidden" name="id" value="${c.id}">
	    					<button type="submit" class="btn btn-success">提 交</button>
	    				</td>
	    			</tr>
	    		</table>
	    	</form>
	  </div>
	</div>	
</div>