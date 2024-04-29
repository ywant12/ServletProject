<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="../component/allcss.jsp"%>
</head>
<body class="bg-dark">
	<%@include file="../component/navbar.jsp"%>
	<div class="conatiner p-5">
		<div class="row">
			<div class="col-md-4 offset-md-3">
				<div class="card">
					<div class="card-header text-center">
						<p class="fs-3">Add Expense</p>
						<c:if test="${not empty msg}">
							<p>${msg}</p>
							<c:remove var="msg" />
						</c:if>
					</div>
					<div class="card-body">
						<form action="../saveExpense" method="post">
							<div class="mb-3">
								<label>Title</label> 
								<input type="text" name="title"
									class="form-contorl">
							</div>
							<div class="mb-3">
								<label>Date</label> 
								<input type="date" name="date"
									class="form-contorl">
							</div>
							<div class="mb-3">
								<label>Time</label> 
								<input type="time" name="time"
									class="form-contorl">
							</div>
							<div class="mb-3">
								<label>Description</label>
								 <input type="text" name="description"
									class="form-contorl">
							</div>
							<div class="mb-3">
								<label>Price</label> 
								<input type="text" name="price"
									class="form-contorl">
							</div>

							<button class="btn btn-success col-md-12">Add</button>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>