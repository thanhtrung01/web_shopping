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
    <!-- Product Category -->
    <!-- All Products -->
	<section style="padding: 10rem 0 5rem 0;" class="section all-products" id="products">
	    <div class="top container">
	        <h1>All Products</h1>
	        <form action="search-shop" method="GET">
            	<div class="form-input">
	                <input type="search" placeholder="Search..." name="keyword" id="myShop">
	                <button type="submit" class="search-btn"><i class='bx bx-search' title="Search"></i></button>
                </div>
            </form>
	        <form>
	            <select>
	                <option value="1">Lọc</option>
	                <option value="2">Nam</option>
	                <option value="3">Nữ</option>
	                <option value="4">Lọc theo giá</option>
	                <option value="5">Lọc theo Sale</option>
	                <option value="6">Lọc theo xếp hạng</option>
	            </select>
	            <span><i class="bx bx-chevron-down"></i></span>
	        </form>
	    </div>
	    <div class="product-center container" id="shop">
		    <c:forEach items="${products}" var="o">
		    	<c:url var="detailLink" value="/detail">
					<c:param name="slug" value="${o.slug}"></c:param>
				</c:url>
		        <div class="product-item">
		            <div class="overlay">
		                <a href="" class="product-thumb">
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
	<section class="pagination">
	    <div class="container">
	        <span>1</span> <span>2</span> <span>3</span> <span>4</span>
	        <span><i class="bx bx-right-arrow-alt"></i></span>
	    </div>
	</section>
	<!-- Footer -->
	<jsp:include page="${pageContext.request.contextPath}/resources/includes/customer/footer.jsp"></jsp:include>
</body>
<!-- script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>
<script src="/resources/includes/customer/script/script.js"></script>
</html>