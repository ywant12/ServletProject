<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="com.entity.User"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Expense"%>
<%@page import="com.db.HiberUtil"%>
<%@page import="com.dao.ExpenseDao"%>
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
<body>
	<%@include file="../component/navbar.jsp"%>

	<div class="conatiner">
		<div class="row">
			<div class="col-md-8 offset-md-2">
				<div class="card">
					<div class="card-header text-center">
						<p class="fs-3">All Expenses</p>
					</div>
					<div class="card-body"></div>
					<table class="table">
						<thead>
							<tr>
								<th scope="col">Title</th>
								<th scope="col">Description</th>
								<th scope="col">Date</th>
								<th scope="col">time</th>
								<th scope="col">Price</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>
							<%
							
							User user=(User)session.getAttribute("loginUser");
						
						ExpenseDao dao = new ExpenseDao(HiberUtil.getSessionFactory());
						List<Expense> list= dao.getAllExpenseByUser(user);
						for(Expense ex :list){
							%>
						

							<tr>
								<th scope="row"><%=ex.getTitle()%></th>
								
								<td><%=ex.getDescription()%></td>
								<td><%=ex.getDate() %></td>
								<td><%=ex.getTime() %></td>
								<td><%=ex.getPrice() %></td>
								<td>
								<a href="#" class="btn btn-sm btn-primary me-1">Edit</a>
								<a href="#" class="btn btn-sm btn-danger me-1">Delete</a>
								</td>
							</tr>
							<%	
							}
						%>


						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>


</body>
</html>