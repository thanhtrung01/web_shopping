<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Login</title>
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

	<!-- Login -->
    <div class="container">
      <div class="login-form">
        <form action="checklogin" method="POST">
          <h1>Login</h1>
          <p>
            Already have an account? Login in or
            <a href="register">Register</a>
          </p>

          <label for="email">Email</label>
          <input type="text" placeholder="Enter Email" name="userName" required />

          <label for="psw">Password</label>
          <input
            type="password"
            placeholder="Enter Password"
            name="Password"
            required
          />

          <label for="psw-repeat">Repeat Password</label>
          <input
            type="password"
            placeholder="Repeat Password"
            name="Password"
            required
          />

          <label>
            <input
              type="checkbox"
              checked="checked"
              name="remember"
              style="margin-bottom: 15px"
            />
            Remember me
          </label>

          <p>
            By creating an account you agree to our
            <a href="#">Terms & Privacy</a>.
          </p>

          <div class="buttons">
            <button type="button" class="cancelbtn">Cancel</button>
            <button type="submit" name="login" class="signupbtn">Login</button>
          </div>
        </form>
      </div>
    </div>
	<!-- Footer -->
	<jsp:include page="${pageContext.request.contextPath}/resources/includes/customer/footer.jsp"></jsp:include>
</body>
<!-- script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/Glide.js/3.4.1/glide.min.js"></script>
<script src="/resources/includes/customer/script/script.js"></script>
</html>