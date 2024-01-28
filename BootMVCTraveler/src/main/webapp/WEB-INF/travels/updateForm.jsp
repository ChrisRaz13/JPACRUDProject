<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Travel</title>
</head>
<body>

    <h2>Update Travel</h2>

  <form action="<c:url value='/updateTravel'/>" method="post">
    <input type="hidden" name="id" value="${destinations.id}" />

    <label for="city">City:</label>
    <input type="text" id="city" name="city" value="${destinations.city}" required /><br>

    <label for="country">Country:</label>
    <input type="text" id="country" name="country" value="${destinations.country}" required /><br>

    <label for="rating">Rating:</label>
    <input type="number" id="rating" name="rating" value="${destinations.rating}" required /><br>

    <input type="submit" value="Update" />
</form>

<a href="<c:url value='/getDestinations.do?travelId=${destinations.id}'/>">Back to Details</a>


</body>
</html>