<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Confirmation</title>
</head>
<body>
    <h2>Confirm Deletion</h2>
    <p>Are you sure you want to delete this travel entry?</p>

    <form action="/deleteTravel" method="post">
        <input type="hidden" name="id" value="${deleteTravel.id}">
        <button type="submit">Yes, Delete</button>
    </form>

    <a href="/traveledList">No, Cancel</a>
</body>
</html>