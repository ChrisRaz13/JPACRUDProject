<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Create New Travel Entry</title>
</head>
<body>
    <h2>Create New Travel Entry</h2>
    <form action="/addTravel" method="post">
        <label for="city">City:</label>
        <input type="text" id="city" name="city" required>
        <br>
        <label for="country">Country:</label>
        <input type="text" id="country" name="country" required>
        <br>
        <label for="rating">Rating:</label>
        <input type="number" id="rating" name="rating" required>
        <br>
        <button type="submit">Submit</button>
    </form>
</body>
</html>