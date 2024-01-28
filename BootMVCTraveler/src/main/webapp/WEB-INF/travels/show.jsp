<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show</title>
</head>
<body>
	<div>
		<h5>Travel Details:</h5>
		<ul>
			<li><strong>City:</strong> ${destinations.city}</li>
			<li><strong>Country:</strong> ${destinations.country}</li>
			<li><strong>Rating:</strong> ${destinations.rating}</li>
		</ul>
	</div>
</body>
</html>