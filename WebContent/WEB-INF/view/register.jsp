<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %> 
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Register</title>
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

	<!-- Register -->
    <div class="container">
      <div class="login-form">
        <form action="">
          <h1>Register</h1>
          <p>
            Please fill in this form to create an account. or
            <a href="login">Login</a>
          </p>

          <label for="email">Email</label>
          <input type="text" placeholder="Enter Email" name="email" required />

          <label for="psw">Password</label>
          <input
            type="password"
            placeholder="Enter Password"
            name="psw"
            required
          />

          <label for="psw-repeat">Repeat Password</label>
          <input
            type="password"
            placeholder="Repeat Password"
            name="psw-repeat"
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
            <button type="submit" class="signupbtn">Register</button>
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