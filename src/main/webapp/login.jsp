<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="component/allcss.jsp"%>
</head>
<body>
	<%@include file="component/navbar.jsp"%>
	<div class="conatiner p-5">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header">
					
						<p class="text-center fs-3">Login Page</p>
						<c:if test="${not empty msg}">
							<p class="text-center text-danger fs-4">${msg}</p>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<form action="login" method="post">
							
							<div class="mb-3">
								<label>Enter mail</label> <input class="form-control"
									type="email" name="email">
							</div>
							<div class="mb-3">
								<label>Enter Password</label> <input class="form-control"
									type="password" name="password">
							</div>
							
							<button class="btn btn-success col-md-12">Login</button>
							<div class="text-center mt-2">
							Don't have an account  <a  href="resgister.jsp"> Create one</a></div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>