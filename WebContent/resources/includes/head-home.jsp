<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<nav class="navbar navbar-expand-sm header">
	<!-- Điều -->
	<ul class="nav">
		<li class="nav-item">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/admin/dashboard">
			    <img src="resources/img/shopping.png" alt="Logo" style="width:60px;">
			</a>
		</li>
	</ul>
  
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto"> 
      <li class="nav-item active">
        <a class="nav-link" href="${pageContext.request.contextPath}/san-pham">TRANG CHỦ <span class="sr-only"></span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="${pageContext.request.contextPath}/the-loai" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          THỂ LOẠI
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="#">NAM</a>
          <a class="dropdown-item" href="#">NỮ</a>
          <div class="dropdown-divider">QUẦN JEAN</div>
          <a class="dropdown-item" href="#">VÁY</a>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link disabled" href="#">FB/ZALO</a>
      </li>
      
      
    </ul>
    <ul class="navbar-nav ml-auto"> 
    	<!-- add a search box -->
      	<li class="nav-item" style="margin-left: 10px; padding-top: 10px;">
				<form style="position: relative;" class="form-inline" action="search" method="GET">
					<input style="border-radius: 10px;" class="form-control mr-sm-2" aria-label="Search"
						placeholder="Nhập quần áo cần tìm..." type="search" id="myInput"
						name="theSearchName" />
					<button style="position: absolute;  right: 2px;" class="btn btn-outline-grey btn-search" title="Search"
						type="submit">
						<i style="color: #827a7a;" class="bi bi-search"></i>
					</button>
				</form>
	      </li>
	      <li  class="nav-item" id="cart_show">
      		<button class="nut_cart">
	      		<i style="font-size: 25px;" class="bi bi-cart-plus"></i>
	      		<span class="badge badge-danger">${cart_list.size()}</span> 
			</button>
			<!-- <div class="show-cart">
				 	<div class="shopping-cart">
				    	<div class="shopping-cart-header">
				      		<i class="fa fa-shopping-cart cart-icon"></i><span class="badge">3</span>
				      		<div class="shopping-cart-total">
						        <span class="lighter-text">Tổng cộng:</span>
						        <span class="main-color-text">$2,229.97</span>
				      		</div>
				    	</div> end shopping-cart-header
				
				    <ul class="shopping-cart-items">
				      <li class="clearfix">
				        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item3.jpg" alt="item1" />
				        <span class="item-name">Kindle, 6" Glare-Free To...</span>
				        <span class="item-price">$129.99</span>
				        <span class="item-quantity">Số lượng: 01</span>
				      </li>
				    </ul>
				
				    <a href="#" class="button">Thanh toán</a>
				  </div> end shopping-cart
			</div> -->
	  	</li>
        <li class="nav-item" id="dropdown">
        	<button class="nut_dropdown">
	           <img src="resources/img/profile.jpg" alt="Avatar" style="border-radius: 50%; width:30px;"> 
	           <span style="color: #c9c969;float: right; margin-left: 5px; margin-top: 5px;">thanhtrung${auth.userName}</span>
            </button>
            <div class="animetion">
            	<div class="triangle-up"></div>
	            <div class="noidung_dropdown">
			      <a href="#"><i class="bi bi-person"></i> Tài khoản của tôi</a>
			      <a href="#"><i class="bi bi-cart-check"></i> Đơn mua</a	>
			      <a href="#"><i class="bi bi-box-arrow-right"></i> Đăng xuất</a>
	    		</div>
	    	</div>
        </li>
   </ul>
    
    <!-- <script>              
            //Hàm Search tự động
            $(document).ready(
            	function() {
            		$("#myInput").on("keyup",function() {
	            		var value = $(this).val().toLowerCase();
	            		$("#content div").filter(function() {
	            			$(this).toggle(
	            			$(this).text().toLowerCase().indexOf(value) > -1)
            	    };);
                };
              );
            });
		</script> -->
	</div>
</nav>
<!-- BOX render cart and button home -->
<!-- <div class="show-cart">
  <div class="shopping-cart">
    <div class="shopping-cart-header">
      <i class="fa fa-shopping-cart cart-icon"></i><span class="badge">3</span>
      <div class="shopping-cart-total">
        <span class="lighter-text">Tổng cộng:</span>
        <span class="main-color-text">$2,229.97</span>
      </div>
    </div> end shopping-cart-header

    <ul class="shopping-cart-items">
      <li class="clearfix">
        <img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/195612/cart-item3.jpg" alt="item1" />
        <span class="item-name">Kindle, 6" Glare-Free To...</span>
        <span class="item-price">$129.99</span>
        <span class="item-quantity">Số lượng: 01</span>
      </li>
    </ul>

    <a href="#" class="button">Thanh toán</a>
  </div> end shopping-cart
</div> end container -->
<a class="button-home" title="Home" href="#">
        <i class="bi bi-chevron-up"></i>
</a>