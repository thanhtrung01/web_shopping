<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html xmlns:th="http://www.thymeleaf.org">
<head>
    <jsp:include page="${pageContext.request.contextPath}/resources/includes/admin/head.jsp"></jsp:include>
</head>

<body>
	<!-- SIDEBAR -->
    <section id="sidebar">
        <a href="/admin/dashboard" class="brand">
            <i class='bx bxs-shopping-bags'></i>
            <span class="text">FairyTail</span>
        </a>
        <ul class="side-menu top">
            <li>
                <a href="/admin/dashboard">
                    <i class='bx bxs-dashboard'></i>
                    <span class="text">Dashboard</span>
                </a>
            </li>
            <li>
                <a href="/admin/user">
                    <i class='bx bxs-user'></i>
                    <span class="text">Customer</span>
                </a>
            </li>
            <li class="active">
                <a href="/admin/product">
                    <i class='bx bxs-shopping-bag-alt'></i>
                    <span class="text">Product</span>
                </a>
            </li>
            <li>
                <a href="/admin/cart">
                    <i class='bx bxs-cart'></i>
                    <span class="text">Order</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class='bx bxs-doughnut-chart'></i>
                    <span class="text">Analytics</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class='bx bxs-comment'></i>
                    <span class="text">Comments</span>
                </a>
            </li>
            <li>
                <a href="#">
                    <i class='bx bxs-heart'></i>
                    <span class="text">Heart</span>
                </a>
            </li>
        </ul>
        <ul class="side-menu">
            <li>
                <a href="#">
                    <i class='bx bxs-cog'></i>
                    <span class="text">Settings</span>
                </a>
            </li>
            <li>
                <a href="#" class="logout">
                    <i class='bx bx-log-out'></i>
                    <span class="text">Logout</span>
                </a>
            </li>
        </ul>
    </section>
    <!-- SIDEBAR -->
    <!-- CONTENT -->
    <section id="content">
    	<!-- NAVBAR -->
    	<jsp:include page="${pageContext.request.contextPath}/resources/includes/admin/navbar.jsp"></jsp:include>
        <!-- MAIN -->
        <main>
            <!-- title navbar content -->
            <div class="head-title">
                <div class="left">
                    <h1>Products</h1>
                    <ul class="breadcrumb">
                        <li>
                            <a href="#">Products</a>
                        </li>
                        <li><i class='bx bx-chevron-right'></i></li>
                        <li>
                            <a class="active" href="#">Home</a>
                        </li>
                    </ul>
                </div>
                <a href="#" class="btn-download">
                    <i class='bx bxs-cloud-download'></i>
                    <span class="text">Download PDF</span>
                </a>
            </div>

            <ul class="box-info">
                <li>
                    <i class='bx bxs-calendar-check'></i>
                    <span class="text">
						<h3>3</h3>
						<p>New Order</p>
					</span>
                </li>
                <li>
                    <i class='bx bxs-group'></i>
                    <span class="text">
						<h3>${userId}</h3>
						<p>Total User</p>
					</span>
                </li>
                <li>
                    <i class='bx bxs-dollar-circle'></i>
                    <span class="text">
						<h3>$12</h3>
						<p>Total Sales</p>
					</span>
                </li>
            </ul>

			
            <div class="table-data">
                <div class="order">
                    <div class="head">
                        <h3>List Products</h3>
                        <form action="search" method="GET">
                        	<div class="form-input">
                                <input type="search" placeholder="Search..." name="keyword" id="myInputList">
                                <button type="submit" class="search-btn"><i class='bx bx-search' title="Search"></i></button>
                            </div>
                        </form>
                        <i class='bx bx-filter'></i>
                    </div>
                    <table>
					<thead>
						<tr>
							<th>ID</th>
							<th>Hình ảnh</th>
							<th>Tên sản phẩm</th>
							<th>Danh Mục</th>
							<th>Giá</th>
							<th>Giảm giá</th>
							<th>% Giảm giá</th>
							<th>Số lượng</th>
							<th>Tình trạng</th>
							<th>ngày tạo</th>
							<th>ngày sửa</th>
						</tr>
					</thead>
					<tbody id="myTable">
						<c:forEach var="itemProduct" items="${products}">
							<!-- set up a link for each user -->
							<c:url var="updateLink" value="/admin/edit-user">
								<c:param name="userId" value="${itemUser.id}"></c:param>

							</c:url>
							<!-- set up a link to delete a user -->
							<c:url var="deleteLink" value="/admin/delete">
								<c:param name="userId" value="${itemUser.id}"></c:param>

							</c:url>

							<tr>
								<td>${itemProduct.id}</td>
					            <td><img style="width:50px; height:50px; border-radius: unset;" src="${itemProduct.image}" /> </td>
					            <td>${itemProduct.title}</td>
					            <td>${itemProduct.idCategory}</td>
					            <td>
					            	<fmt:formatNumber value="${itemProduct.price}" type="number" pattern="###,###"/>₫
					            </td>
					            <td>
						            <c:if test="${itemProduct.sale == true}">
					                	<span class="discount">Có</span>
					                </c:if>
					                <c:if test="${itemProduct.sale == false}">
					                	<span class="discount">Không</span>
					                </c:if>
					            </td>
					            <td>${itemProduct.discount}%</td>
					            <td>${itemProduct.quantity}</td>
					            <td>
						            <c:if test="${itemProduct.condition != 0}">
					                	<span class="discount">Còn hàng</span>
					                </c:if>
					                <c:if test="${itemProduct.condition == 0}">
					                	<span class="discount">Hết hàng</span>
					                </c:if>
					            </td>
					            <td>
					                <fmt:formatDate value="${itemProduct.createdAt}" pattern="dd/MM/yyyy" />
					            </td>
					            <td>
					                <fmt:formatDate value="${itemProduct.updatedAt}" pattern="dd/MM/yyyy" />
					            </td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
                </div>
                
            </div>
        </main>
        <!-- MAIN -->
    </section>
    <!-- CONTENT -->
    <script src="${pageContext.request.contextPath}/resources/includes/admin/script/script.js"></script>
    
</body>

</html>