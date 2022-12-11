<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="navigation">
	<div class="nav-center container d-flex">
		<a href="/" class="logo">
			<h1>Fairy Tail</h1>
		</a>

		<ul class="nav-list d-flex">
			<li class="nav-item"><a href="/" class="nav-link">Home</a></li>
			<li class="nav-item"><a href="/shop" class="nav-link">Shop</a>
			</li>
			<li class="nav-item"><a href="#terms" class="nav-link">Terms</a>
			</li>
			<li class="nav-item"><a href="#about" class="nav-link">About</a>
			</li>
			<li class="nav-item"><a href="#contact" class="nav-link">Contact</a>
			</li>
			<li class="icons d-flex"><a href="/auth/login" class="icon">
					<i class="bx bx-user"></i>
			</a>
				<div class="icon">
					<i class="bx bx-search"></i>
				</div>
				<div class="icon">
					<i class="bx bx-heart"></i> <span class="d-flex">0</span>
				</div> <a href="cart.html" class="icon"> <i class="bx bx-cart"></i> <span
					class="d-flex">0</span>
			</a></li>
		</ul>

		<div class="icons d-flex">
			<form action="search">
			    <div class="form-input">
			        <input type="search" placeholder="Search..." name="theSearchName">
			        <button type="submit" class="search-btn"><i class='bx bx-search' ></i></button>
			    </div>
			</form>
			<div class="icon">
				<i class="bx bx-heart"></i> <span class="d-flex">0</span>
			</div>
			<a href="cart.html" class="icon"> <i class="bx bx-cart"></i> <span
				class="d-flex">0</span>
			</a>
			<a href="/auth/login" class="icon"> <i class="bx bx-user"></i>
			</a>
		</div>

		<div class="hamburger">
			<i class="bx bx-menu-alt-left"></i>
		</div>
	</div>
</div>
