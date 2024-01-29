<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Travel</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #2980B9, #6DD5FA); 
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        h2 {
            color: #fff;
            margin-bottom: 20px;
        }

        form {
            max-width: 400px;
            background-color: rgba(255, 255, 255, 0.8); 
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 8px;
            color: #333;
        }

        input[type="text"],
        input[type="number"],
        input[type="submit"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        .back-to-list {
            display: block;
            margin-top: 10px;
            background-color: #007bff;
            color: #fff;
            text-decoration: none;
            padding: 10px;
            border-radius: 4px;
        }

        .back-to-list:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <h2>Update Travel</h2>

    <form action="<c:url value='/updateTravel'/>" method="post">
        <input type="hidden" name="id" value="${destinations.id}" />

        <label for="city">City:</label>
        <input type="text" id="city" name="city" value="${destinations.city}" required />

        <label for="country">Country:</label>
        <input type="text" id="country" name="country" value="${destinations.country}" required />

        <label for="rating">Rating:</label>
        <input type="number" id="rating" name="rating" value="${destinations.rating}" required />

        <input type="submit" value="Update" />
    </form>

    <a href="<c:url value='/getDestinations.do?travelId=${destinations.id}'/>">Home</a>

    <a href="/traveledList" class="back-to-list">Back to Traveled List</a>

</body>
</html>