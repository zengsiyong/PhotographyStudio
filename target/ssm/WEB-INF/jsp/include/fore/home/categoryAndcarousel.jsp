
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>


<script>
function showProductsAsideCategorys(cid){
	$("div.eachCategory[cid="+cid+"]").css("background-color","white");
	$("div.eachCategory[cid="+cid+"] a").css("color","#87CEFA");
	$("div.productsAsideCategorys[cid="+cid+"]").show();
}


function hideProductsAsideCategorys(cid){
	$("div.eachCategory[cid="+cid+"]").css("background-color","#e2e2e3");
	$("div.eachCategory[cid="+cid+"] a").css("color","#000");
	$("div.productsAsideCategorys[cid="+cid+"]").hide();
}

function showCategoryMenu(){
	$(".categoryMenu").show();
}
function hideCategoryMenu(){
	$(".categoryMenu").hide();
}

$(function(){
	hideCategoryMenu();
    $("div.eachCategory").mouseenter(function(){
        var cid = $(this).attr("cid");
		showCategoryMenu();
        showProductsAsideCategorys(cid);
    });
    $("div.eachCategory").mouseleave(function(){
        var cid = $(this).attr("cid");
		hideCategoryMenu();
        hideProductsAsideCategorys(cid);
    });
    $("div.productsAsideCategorys").mouseenter(function(){
    	var cid = $(this).attr("cid");
		showCategoryMenu();
    	showProductsAsideCategorys(cid);
    });
    $("div.productsAsideCategorys").mouseleave(function(){
    	var cid = $(this).attr("cid");
		hideCategoryMenu();
    	hideProductsAsideCategorys(cid);
    });
	$("div.head").mouseenter(function () {
		showCategoryMenu();
	})
	$("div.head").mouseleave(function(){
		hideCategoryMenu();
	})
	
	$("div.rightMenu span").mouseenter(function(){
		var left = $(this).position().left;
		var top = $(this).position().top;
		var width = $(this).css("width");
		var destLeft = parseInt(left) + parseInt(width)/2;
		$("img#catear").css("left",destLeft);
		$("img#catear").css("top",top-20);
		$("img#catear").fadeIn(500);
				
	});
	$("div.rightMenu span").mouseleave(function(){
		$("img#catear").hide();
	});


	var left = $("div#carousel-of-product").offset().left;
	$("div.categoryMenu").css("left",left-20);
	$("div.categoryWithCarousel div.head").css("margin-left",left);
	$("div.productsAsideCategorys").css("left",left-20);
	
	
});
</script>

<img src="img/site/catear.png" id="catear" class="catear"/>
	
<div class="categoryWithCarousel">


<div class="headbar show1">
	<div class="head ">
	
		<span style="margin-left:10px" class="glyphicon glyphicon-th-list"></span>
		<span style="margin-left:10px" >服务套餐选购</span>
		
	</div>
	
	<div class="rightMenu">
		<c:forEach items="${cs}" var="c" varStatus="st">
			<c:if test="${st.count<=4}">
				<span>
				<a href="forecategory?cid=${c.id}">
					${c.name}
				</a></span>			
			</c:if>
		</c:forEach>
	</div>
	
</div>

	
<div style="position: relative">
	<%@include file="categoryMenu.jsp" %>
</div>

<div style="position: relative;left: 0;top: 0;">
	<%@include file="productsAsideCategorys.jsp" %>
</div>



<%--<%@include file="carousel.jsp" %>--%>
	<%--<jsp:include page="/index.html" />--%>
	<object style="border:0px" type="text/x-scriptlet" data="index.html" width=100% height=483</object>
<div class="carouselBackgroundDiv">

</div>

</div>




