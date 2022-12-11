<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>FairyTail Shop</title>
	<jsp:include page="${pageContext.request.contextPath}/resources/includes/customer/head.jsp"></jsp:include>
</head>
<body>
	<!-- Header -->
    <header style="min-height: unset;" class="header" id="header">
    	<!-- Top Nav -->
    	<jsp:include page="${pageContext.request.contextPath}/resources/includes/customer/top-nav.jsp"></jsp:include>
    	<!-- Navbar -->
    	<jsp:include page="${pageContext.request.contextPath}/resources/includes/customer/navbar.jsp"></jsp:include>
    </header>
    <!-- Cart Items -->
	<div class="container cart">
	  <table>
	    <tr>
	      <th>Product</th>
	      <th>Quantity</th>
	      <th>Subtotal</th>
	    </tr>
	    <tr>
	      <td>
	        <div class="cart-info">
	          <img src="" alt="" />
	          <div>
	            <p>Boy’s T-Shirt</p>
	            <span>Price: $50.00</span> <br />
	            <a href="#">remove</a>
	          </div>
	        </div>
	      </td>
	      <td><input type="number" value="1" min="1" /></td>
	      <td>$50.00</td>
	    </tr>
	  </table>
	  <div class="total-price">
	    <table>
	      <tr>
	        <td>Subtotal</td>
	        <td>$200</td>
	      </tr>
	      <tr>
	        <td>Tax</td>
	        <td>$50</td>
	      </tr>
	      <tr>
	        <td>Total</td>
	        <td>$250</td>
	      </tr>
	    </table>
	    <a href="#" class="checkout btn">Proceed To Checkout</a>
	  </div>
	</div>
    
	<!-- Latest Products -->
	<section class="section new-arrival featured">
	    <div class="top container">
	        <h1>Latest Products</h1>
	        <a href="#" class="view-more">View more</a>
      	</div>
	    
	    <div class="product-center container">
		    <c:forEach items="${products}" var="o" begin="0" end="3">
		    	<c:url var="detailLink" value="/detail">
					<c:param name="productId" value="${o.id}"></c:param>
				</c:url>
		        <div class="product-item">
		            <div class="overlay">
		                <a href="${detailLink}" class="product-thumb">
		                    <img src="${o.image}" alt="" />
		                </a>
		                <c:if test="${o.discount != 0}">
		                	<span class="discount">${o.discount}%</span>
		                </c:if>
		            </div>
		
		            <div class="product-info">
		                <span>${o.title}</span>
		                <a href="">Sonata White Men’s Shirt</a>
		                <h4>
		                	<fmt:formatNumber value="${o.price}" type="number" pattern="###,###"/>₫
		                </h4>
		            </div>
		            <ul class="icons">
		            	<li><a href="${detailLink}"><i class="bx bx-show-alt"></i></a></li>
		                <li><i class="bx bx-heart"></i></li>
		                <li><i class="bx bx-cart"></i></li>
		            </ul>
		        </div>
		     </c:forEach>
	    </div>
	</section>
	<!-- Footer -->
	<jsp:include page="${pageContext.request.contextPath}/resources/includes/customer/footer.jsp"></jsp:include>
	<script
      src="https://code.jquery.com/jquery-3.4.0.min.js"
      integrity="sha384-JUMjoW8OzDJw4oFpWIB2Bu/c6768ObEthBMVSiIx4ruBIEdyNSUQAjJNFqT5pnJ6"
      crossorigin="anonymous">
	</script>
</body>
<!-- script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>
<script src="/resources/includes/customer/script/script.js"></script>
<script src="/resources/includes/customer/script/zoomsl.min.js"></script>
</html>