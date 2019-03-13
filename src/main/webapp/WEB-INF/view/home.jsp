<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script defer src="https://use.fontawesome.com/releases/v5.7.2/js/all.js" integrity="sha384-0pzryjIRos8mFBWMzSSZApWtPl/5++eIfzYmTgBBmXYdhvxPc+XcFEk+zJwDgWbP" crossorigin="anonymous"></script>

</head>
<body>

  <div class="container">
  <div class="row justify-content-center">
    <div class="col-10 col-sm-8 col-md-6 col-lg-4">
    <h1 class="display-4"> <i class="fas fa-home"></i> Hi 
    <security:authentication property="principal.username"/>
    </h1>
    <p>Welcome, you are <security:authentication property="principal.authorities"/></p>

<nav class="nav">
<security:authorize access="hasRole('MANAGER')">
  <a class="nav-link" href="${pageContext.request.contextPath}/leaders">Leaders</a>
</security:authorize>
<security:authorize access="hasRole('ADMIN')">
  <a class="nav-link" href="${pageContext.request.contextPath}/systems">Systems</a>
  </security:authorize>
</nav>
<hr>
<form:form action="${pageContext.request.contextPath}/logout" method="POST">
  
  <button type="submit" class="btn btn-sm btn-outline-danger">Logout <i class="fas fa-sign-out-alt"></i></button>
  
</form:form>
    </div>
  </div>
  
</div>





<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>
</html>