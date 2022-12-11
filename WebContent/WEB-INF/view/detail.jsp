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
    <!-- Product Details -->
    <section class="section product-detail">
    <c:forEach items="${productdetail}" var="d">
      <div class="details container">
        <div class="left image-container">
          <div class="main">
            <img src="${d.image}" id="zoom" alt="" />
          </div>
        </div>
        <div class="right">
          <span>${d.title}</span>
          <h1>Boy’s T-Shirt By Handsome</h1>
          <div class="price"><fmt:formatNumber value="${d.price}" type="number" pattern="###,###"/>₫</div>
          <form>
              <select>
                <!-- <option value="Select Size" selected disabled>
                  Select Size
                </option> -->
                <option value="0">30</option>
                <option value="1">32</option>
                <option value="2">42</option>
                <option value="3">52</option>
                <option value="4">62</option>
              </select>
              <span><i class="bx bx-chevron-down"></i></span>
          </form>
          <form class="form">
            <input type="text" placeholder="1" />
            <a href="/cart" class="addCart">Add To Cart</a>
          </form>
          <h3>Product Detail</h3>
          <p>
            ${d.description}
          </p>
        </div>
      </div>
      </c:forEach>
    </section>
    
	<!-- New Arrivals -->
	<section class="section new-arrival">
	    <div class="title">
	        <h1>NEW ARRIVALS</h1>
	        <p>All the latest picked from designer of our store</p>
	    </div>
	    
	    <div class="product-center">
		    <c:forEach items="${products}" var="o" begin="0" end="3">
		    	<c:url var="detailLink" value="/detail">
					<c:param name="slug" value="${o.slug}"></c:param>
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