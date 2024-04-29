
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<nav class="navbar navbar-expand-lg navbar-light bg-success">
	<div class="container-fluid">
		<a class="navbar-brand" href="#"><i class="fa fa-money"
			aria-hidden="true"></i>Expense Tracker</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="index.jsp"><i class="fa fa-home"
						aria-hidden="true"></i>Home</a></li>

				<c:if test="${ not empty loginUser }">
					<li class="nav-item"><a class="nav-link active"
						href="addexpense.jsp"><i class="fa fa-sign-in" aria-hidden="true"></i>Add Expense</a>
					</li>

					<li class="nav-item active"><a class="nav-link "
						href="viewexpense.jsp" tabindex="-1"><i class="fa fa-registered"
							aria-hidden="true"></i>View Expense</a></li>
				</c:if>




			</ul>
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">

				<c:if test="${ not empty loginUser }">

					<li class="nav-item"><a class="nav-link active" href="#"><i
							class="fa fa-sign-in" aria-hidden="true"></i>${loginUser.fullname }</a>
					</li>

					<li class="nav-item active"><a class="nav-link "
						href="../logout" tabindex="-1"><i class="fa fa-registered"
							aria-hidden="true"></i>Logout</a></li>
				</c:if>

				<c:if test="${  empty loginUser }">

					<li class="nav-item"><a class="nav-link active"
						href="login.jsp"><i class="fa fa-sign-in" aria-hidden="true"></i>Login</a>
					</li>

					<li class="nav-item active"><a class="nav-link "
						href="resgister.jsp" tabindex="-1"><i class="fa fa-registered"
							aria-hidden="true"></i>Registration</a></li>
				</c:if>
			</ul>

		</div>
	</div>
</nav>