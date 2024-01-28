<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Traveled Places</title>
</head>
<body>

    <h2>List of Traveled Places</h2>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>City</th>
                <th>Country</th>
                <th>Rating</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="travel" items="${travels}">
                <tr>
                    <td>${travel.id}</td>
                    <td>${travel.city}</td>
                    <td>${travel.country}</td>
                    <td>${travel.rating}</td>
                    <td>
                        <form action="/deleteTravel" method="post">
                            <input type="hidden" name="travelId" value="${travel.id}">
                            <button type="submit">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <a href="/">Go Back Home</a>

</body>
</html>