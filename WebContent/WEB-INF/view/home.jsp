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
    <header class="header" id="header">
    	<!-- Top Nav -->
    	<jsp:include page="${pageContext.request.contextPath}/resources/includes/customer/top-nav.jsp"></jsp:include>
    	<!-- Navbar -->
    	<jsp:include page="${pageContext.request.contextPath}/resources/includes/customer/navbar.jsp"></jsp:include>
    	<!-- slider -->
    	<div class="hero">
		    <div class="glide" id="glide_1">
		        <div class="glide__track" data-glide-el="track">
		        	
			            <ul class="glide__slides">
			            <c:forEach items="${sliders}" var="s" begin="0" end="1" >
			                <li class="glide__slide">
			                    <div class="center">
			                        <div class="left">
			                            <span class="">New Inspiration 2020</span>
			                            <h1 class="">${s.titleSlider}</h1>
			                            <p>Trending from men's and women's style collection</p>
			                            <a href="#" class="hero-btn">SHOP NOW</a>
			                        </div>
			                        <div class="right">
			                        	<c:if test="${s.id != 1}">
			                            	<img class="img2" src="${s.imageSlider}" alt="">
			                            </c:if>
			                            <c:if test="${s.id == 1}">
			                            	<img class="img1" src="${s.imageSlider}" alt="">
			                            </c:if>
			                        </div>
			                    </div>
			                </li>
			                </c:forEach>
			            </ul>
			    	
			    	
		        </div>
		    </div>
		</div>
    </header>

<!-- Categories Section -->
    <section class="section category">
        <div class="cat-center">
        	<c:forEach items="${categorys}" var="cate">
        		<c:url var="category" value="/danh-muc/${cate.slugCategory}">
				</c:url>
	            <div class="cat">
	            	<a href="${category}">
	                	<img src="${cate.imageCategory}" alt="" />
	                </a>
	                <div>
	                	<a href="${category}"><p>${cate.nameCategory}</p></a>
	                    
	                </div>
	            </div>
	    	</c:forEach>
        </div>
    </section>	
    
	<!-- New Arrivals -->
	<section class="section new-arrival">
	    <div class="title">
	        <h1>NEW ARRIVALS</h1>
	        <p>All the latest picked from designer of our store</p>
	    </div>
	    
	    <div class="product-center">
		    <c:forEach items="${products}" var="o" begin="0" end="7">
		    	<c:url var="detailLink" value="/detail">
					<c:param name="slug" value="${o.slug}"></c:param>
				</c:url>
		        <div class="product-item">
		        	<a href="${detailLink}" class="product-thumb">
			            <div class="overlay">
			                    <img src="${o.image}" alt="" />
			                
			                <c:if test="${o.discount != 0}">
			                	<span class="discount">${o.discount}%</span>
			                </c:if>
			            </div>
		            </a>
		
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
	
	<!-- Promo -->

    <section class="section banner">
    	<c:forEach items="${banners}" var="b">
	        <div class="left">
	            <span class="trend">Trend Design</span>
	            <h1>${b.title}</h1>
	            <p>${b.name} <span class="color">Sale ${b.sale}% OFF</span> ${b.description}</p>
	            <a href="#" class="btn btn-1">Discover Now</a>
	        </div>
	        <div class="right">
	            <img src="${b.image}" alt="">
	        </div>
        </c:forEach>
    </section>
	
	<!-- Featured -->
	<section class="section new-arrival">
	    <div class="title">
	        <h1>Featured</h1>
	        <p>All the latest picked from designer of our store</p>
	    </div>
	
	    <div class="product-center">
	    	<c:forEach items="${products}" var="f" begin="3" end="6">
	    		<c:url var="detailBottom" value="/detail">
					<c:param name="slug" value="${f.slug}"></c:param>
				</c:url>
		        <div class="product-item">
		        	<a class="product-thumb" href="${detailBottom}">
			            <div class="overlay">
			                    <img src="${f.image}" alt="" />
			                <c:if test="${f.discount != 0}">
			                	<span class="discount">${f.discount}%</span>
			                </c:if>
			            </div>
		            </a>
		            <div class="product-info">
		                <span>${f.title}</span>
		                <a href="">Quis Nostrud Exercitation</a>
		                <h4><fmt:formatNumber value="${f.price}" type="number" pattern="###,###"/>₫</h4>
		            </div>
		            <ul class="icons">
		                <li><a href="${detailBottom}"><i class="bx bx-show-alt"></i></a></li>
		                <li><i class="bx bx-search"></i></li>
		                <li><i class="bx bx-cart"></i></li>
		            </ul>
		        </div>
		      </c:forEach>
		  </div>
	</section>
	<!-- Footer -->
	<jsp:include page="${pageContext.request.contextPath}/resources/includes/customer/footer.jsp"></jsp:include>
</body>
<!-- script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>
<script src="/resources/includes/customer/script/script.js"></script>
</html>