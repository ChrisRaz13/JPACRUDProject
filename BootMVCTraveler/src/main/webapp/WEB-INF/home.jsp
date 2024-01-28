<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
    <title>Home</title>
</head>
<body>

    <h2>Travel Destinations</h2>

    <c:forEach var="travel" items="${travels}">
        <p>${travel.id} - ${travel.city}, ${travel.country}</p>
        <a href="<c:url value='/updateForm?travelId=${travel.id}'/>">Update Travel</a>
    </c:forEach>

    <form action="<c:url value='/updateForm'/>" method="get">
        <label for="travelId">Enter Travel ID:</label>
        <input type="text" id="travelId" name="travelId" required />
        <input type="submit" value="Update Travel" />
    </form>

</body>
</html>