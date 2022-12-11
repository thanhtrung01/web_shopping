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
            <li class="active">
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
                    <h1>Customers</h1>
                    <ul class="breadcrumb">
                        <li>
                            <a href="#">Customers</a>
                        </li>
                        <li><i class='bx bx-chevron-right'></i></li>
                        <li>
                            <a class="active" href="#">Edit Customer</a>
                        </li>
                    </ul>
                </div>
                <a href="#" class="btn-download">
                    <i class='bx bxs-cloud-download'></i>
                    <span class="text">Download PDF</span>
                </a>
            </div>

			
            <div class="table-data">
                <div class="order">
                    <div class="head">
                        <h3>Edit User</h3>
                    </div>
                    
                </div>
                
            </div>
        </main>
        <!-- MAIN -->
    </section>
    <!-- CONTENT -->
    <script src="${pageContext.request.contextPath}/resources/includes/admin/script/script.js"></script>
    
</body>

</html>