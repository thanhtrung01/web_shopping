<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- NAVBAR -->
        <nav>
            <i class='bx bx-menu'></i>
            <a href="#" class="nav-link">Categories</a>
            <form action="search" method="GET">
                <div class="form-input">
                    <input type="search" placeholder="Search..." name="keyword" id="myInput">
                    <button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
                </div>
            </form>
            <div class="switch-mode">
                <i class="bx bx-moon"></i>
                <i class="bx bx-sun"></i>
            </div>
            <a href="#" class="notification">
                <i class='bx bxs-bell'></i>
                <span class="num">8</span>
            </a>
            <div class="profile_all">
                <button class="profile-details">
                    <span class="admin_name">Admin</span>
					<img src="/resources/img/profile.jpg" alt="">
                    <!-- <i class='bx bx-chevron-down'></i> -->
                </button>

                <div class="triangle-up"></div>
                <div class="noidung_profile-details">
                    <a href="#"><i class="bx bx-user"></i> Tài khoản của tôi</a>
                    <a href="#"><i class="bx bx-log-out"></i> Đăng xuất</a>
                </div>
            </div>
        </nav>
        <!-- NAVBAR -->