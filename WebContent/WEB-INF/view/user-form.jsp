<%@ page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
	<jsp:include page="${pageContext.request.contextPath}/resources/includes/head.jsp"></jsp:include>
</head>
<body>
<jsp:include page="${pageContext.request.contextPath}/resources/includes/menu.jsp"></jsp:include>
	<div id="page">
	<div class="container">
		<div id="container">
			<div id="content">
				<h3>Save User</h3>
				<form:form action="saveUser" modelAttribute="user"
					method="POST">
					<form:hidden path="id" />
					<!-- name -->
					<div class="row pt-4">
						<div class="col-auto col-xl-6">
							<label class="sr-only" for="inlineFormInputGroup">First
								Name...</label>
							<div class="input-group mb-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="bi bi-person-fill"></i>
									</div>
								</div>
								<form:input type="text" path="firstName" class="form-control"
									id="inlineFormInputGroup" placeholder="First Name..." />
							</div>
						</div>

						<div class="col-auto col-xl-6">
							<label class="sr-only" for="inlineFormInputGroup">Email...</label>
							<div class="input-group mb-2">
							<div class="input-group-prepend">
								<div class="input-group-text">@</div>
							</div>
							<form:input type="text" path="email" class="form-control"
								id="inlineFormInputGroup" placeholder="Email..." />
						</div>
						</div>
					</div>



					<div class="col-xl-12 p-0 pt-3">
						<label class="sr-only" for="inlineFormInputGroup">Last
								Name...</label>
							<div class="input-group mb-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="bi bi-person-hearts"></i>
									</div>
								</div>
								<form:input type="text" path="middleName" class="form-control"
									id="inlineFormInputGroup" placeholder="Middle Name..." />
							</div>
							<label class="sr-only pt-3" for="inlineFormInputGroup">Last
								Name...</label>
							<div class="input-group mb-2">
								<div class="input-group-prepend">
									<div class="input-group-text">
										<i class="bi bi-person-hearts"></i>
									</div>
								</div>
								<form:input type="text" path="lastName" class="form-control"
									id="inlineFormInputGroup" placeholder="Last Name..." />
							</div>
					</div>

					<button type="submit" value="Save" class="save">save</button>

				</form:form>
				<div>
					<p>
						<a href="${pageContext.request.contextPath}/admin/dashboard">Back
							to list</a>
					</p>
				</div>
			</div>
			</div>
		</div>
	</div>
</body>
</html>