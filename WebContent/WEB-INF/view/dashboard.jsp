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
        <a href="#" class="brand">
            <i class='bx bxs-shopping-bags'></i>
            <span class="text">FairyTail</span>
        </a>
        <ul class="side-menu top">
            <li class="active">
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
            <li>
                <a href="/admin/product">
                    <i class='bx bxs-shopping-bag-alt'></i>
                    <span class="text">Product</span>
                </a>
            </li>
            <li>
                <a href="#">
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
                    <h1>Dashboard</h1>
                    <ul class="breadcrumb">
                        <li>
                            <a href="#">Dashboard</a>
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
						<h3>1020</h3>
						<p>New Order</p>
					</span>
                </li>
                <li>
                    <i class='bx bxs-group'></i>
                    <span class="text">
						<h3>2834</h3>
						<p>Total Users</p>
					</span>
                </li>
                <li>
                    <i class='bx bxs-dollar-circle'></i>
                    <span class="text">
						<h3>$2543</h3>
						<p>Total Sales</p>
					</span>
                </li>
            </ul>

			
            <div class="table-data">
                <div class="order">
                    <div class="head">
                        <h3>Recent Orders</h3>
                        <form action="#">
                            <div class="form-input">
                                <input type="search" placeholder="Search...">
                                <button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
                            </div>
                        </form>
                        <i class='bx bx-filter'></i>
                    </div>
                    <table>
					<thead>
						<tr>
							<th>ID</th>
							<th>Avatar</th>
							<th>Họ và tên</th>
							<th>Tài khoản</th>
							<th>Năm sinh</th>
							<th>Email</th>
							<th>sđt</th>
							<th>địa chỉ</th>
							<th>ngày tạo</th>
							<th>ngày sửa</th>
							<th>Chức năng</th>
						</tr>
					</thead>
					<tbody id="myTable">
						<c:forEach var="itemUser" items="${users}">
							<!-- set up a link for each user -->
							<c:url var="updateLink" value="/admin/showFormForUpdate">
								<c:param name="userId" value="${itemUser.id}"></c:param>

							</c:url>
							<!-- set up a link to delete a user -->
							<c:url var="deleteLink" value="/admin/delete">
								<c:param name="userId" value="${itemUser.id}"></c:param>

							</c:url>

							<tr>
								<td class="firstName">${itemUser.id}</td>
								<td><img style="width:50px; height:50px;" src="${itemUser.avatar}"/> </td>
								<td class="firstName">${itemUser.lastName} ${itemUser.middleName} ${itemUser.firstName}</td>
								<td class="firstName">${itemUser.userName}</td>
								<td class="firstName"><fmt:formatDate value="${itemUser.age}" pattern="dd/MM/yyyy"/></td>
								<td class="firstName" >${itemUser.email}</td>
								<td class="firstName">${itemUser.phone}</td>
								<td class="firstName">${itemUser.address}</td>
								<td class="firstName"><fmt:formatDate value="${itemUser.createdAt}" pattern="dd/MM/yyyy"/></td>
								<td class="firstName"><fmt:formatDate value="${itemUser.updatedAt}" pattern="dd/MM/yyyy"/></td>
								<td class="firstName">
									<div title="Edit" class="act-edit">
										<a href="${updateLink}"><i
											class="bx bx-edit"></i></a>
									</div>
									<div title="Delete" class="act-del">
										<a href="${deleteLink}"
											onclick="if(!(confirm('Are you sure to delete? '))) return false">
											<i class='bx bxs-x-square'></i>
										</a>
									</div>
								</td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
                </div>
                <div class="todo">
                    <div class="head">
                        <h3>Todos</h3>
                        <i class='bx bx-plus'></i>
                        <i class='bx bx-filter'></i>
                    </div>
                    <ul class="todo-list">
                        <li class="completed">
                            <p>Todo List</p>
                            <i class='bx bx-dots-vertical-rounded'></i>
                        </li>
                        <li class="completed">
                            <p>Todo List</p>
                            <i class='bx bx-dots-vertical-rounded'></i>
                        </li>
                        <li class="not-completed">
                            <p>Todo List</p>
                            <i class='bx bx-dots-vertical-rounded'></i>
                        </li>
                        <li class="completed">
                            <p>Todo List</p>
                            <i class='bx bx-dots-vertical-rounded'></i>
                        </li>
                        <li class="not-completed">
                            <p>Todo List</p>
                            <i class='bx bx-dots-vertical-rounded'></i>
                        </li>
                    </ul>
                </div>
            </div>
        </main>
        <!-- MAIN -->
    </section>
    
    <!-- script -->
    <script src="${pageContext.request.contextPath}/resources/includes/admin/script/script.js"></script>
</body>

</html>