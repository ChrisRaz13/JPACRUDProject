<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
</head>
<body>
	<form action="getDestinations.do" method="GET">
		Travel Destinations: <input type="text" name="travelId" /> <input type="submit"
			value="Show Destination" />
		<c:forEach var="destinations" items="${destinations}">
			<ul>
				<li><a href="getDestinations.do?id=${destination.id}"> ${destination.title} </a></li>
			</ul>
		</c:forEach>
		
		<a href="/createTravel">Create New Travel Entry</a>
	</form>
</body>
</html>