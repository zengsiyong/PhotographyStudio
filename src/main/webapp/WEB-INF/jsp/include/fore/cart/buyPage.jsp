
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<div class="buyPageDiv">
  <form action="forecreateOrder" method="post">
	<div class="address">
		<div class="addressTip">输入个人信息</div>
		<div>
		
			<table class="addressTable">
				<tr>
					<td class="firstColumn">居住地址<span class="redStar">*</span></td>
					
					<td><textarea name="address" placeholder="建议您如实填写居住地址，方便选择拍摄地点"></textarea></td>
				</tr>

				<tr>
					<td>姓名<span class="redStar">*</span></td>
					<td><input  name="receiver"  placeholder="长度不超过25个字符" type="text"></td>
				</tr>
				<tr>
					<td>手机号码 <span class="redStar">*</span></td>
					<td><input name="mobile"  placeholder="请输入手机号码" type="text"></td>
				</tr>
				<tr>
					<td>微信号码 <span class="redStar">*</span></td>
					<td><input name="mobile"  placeholder="请输入微信号" type="text"></td>
				</tr>
			</table>
			
		</div>




		
		
		
	
	</div>
	<div class="productList">
		<div class="productListTip">确认订单信息</div>
		
		
		<table class="productListTable">
			<thead>
				<tr>
					<th colspan="2" class="productListTableFirstColumn">
						<%--<img class="tmallbuy" src="img/site/tmallbuy.png">--%>

						<%--<a class="wangwanglink" href="#nowhere"> <span class="wangwangGif"></span> </a>--%>
					</th>
					<th>单价</th>
					<th>数量</th>
					<th>小计</th>
					<th>满意度</th>
				</tr>
				<tr class="rowborder">
					<td  colspan="2" ></td>
					<td></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
			</thead>
			<tbody class="productListTableTbody">
				<c:forEach items="${ois}" var="oi" varStatus="st" >
					<tr class="orderItemTR">
						<td class="orderItemFirstTD"><img class="orderItemImg" src="img/productSingle_middle/${oi.product.firstProductImage.id}.jpg"></td>
						<td class="orderItemProductInfo">
						<a  href="foreproduct?pid=${oi.product.id}" class="orderItemProductLink">
							${oi.product.name}
						</a>
							<img src="img/site/creditcard.png" title="支持信用卡支付">
							<img src="img/site/promise.png" title="消费者保障服务,承诺如实描述">
						
						</td>
						<td>
						
						<span class="orderItemProductPrice">￥<fmt:formatNumber type="number" value="${oi.product.promotePrice}" minFractionDigits="2"/></span>
						</td>
						<td>
						<span class="orderItemProductNumber">${oi.number}</span>
						</td>
						<td><span class="orderItemUnitSum">
						￥<fmt:formatNumber type="number" value="${oi.number*oi.product.promotePrice}" minFractionDigits="2"/>
						</span></td>
						<c:if test="${st.count==1}">
						<td rowspan="5"  class="orderItemLastTD">
							<label class="orderItemDeliveryLabel">
								<input type="radio" value="" checked="checked">
								选择对满意度
							</label>

							<select class="orderItemDeliverySelect" class="form-control">
								<option>十分满意</option>
								<option>满意</option>
								<option>不满意</option>
							</select>

							</td>
						</c:if>
						
					</tr>
				</c:forEach>				
				
			</tbody>
			
		</table>
		<div class="orderItemSumDiv">
			<%--<div class="pull-left">--%>
				<%--<span class="leaveMessageText">给摄影师留言:</span>--%>
				<%--<span>--%>
					<%--<img class="leaveMessageImg" src="img/site/leaveMessage.png">--%>
				<%--</span>--%>
				<%--<span class="leaveMessageTextareaSpan">--%>
					<%--<textarea name="userMessage" class="leaveMessageTextarea"></textarea>--%>
					<%--<div>--%>
						<%--<span>还可以输入200个字符</span>--%>
					<%--</div>--%>
				<%--</span>--%>
			<%--</div>--%>
			
			<span class="pull-right">套餐合计: ￥<fmt:formatNumber type="number" value="${total}" minFractionDigits="2"/></span>
		</div>
		

				
	
	</div>

	<div class="orderItemTotalSumDiv">
		<div class="pull-right"> 
			<span>实付款：</span>
			<span class="orderItemTotalSumSpan">￥<fmt:formatNumber type="number" value="${total}" minFractionDigits="2"/></span>
		</div>
	</div>
	
	<div class="submitOrderDiv">
			<button type="submit" class="submitOrderButton">提交订单</button>
	</div>
  </form>		
</div>