<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Confirmation</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 20px;
            padding: 20px;
            background-color: #f8f9fa;
            text-align: center;
        }

        h2 {
            color: #dc3545; 
        }

        p {
            margin-top: 20px;
            font-size: 18px;
        }

        form {
            margin-top: 20px;
        }

        input[type="hidden"] {
            display: none; 
        }

        button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #dc3545; 
            color: #fff;
            border: none;
            cursor: pointer;
        }

        button:hover {
            background-color: #c82333;
        }

        a {
            display: block;
            margin-top: 20px;
            text-decoration: none;
            color: #007bff; 
            font-weight: bold;
            font-size: 16px;
        }

        a:hover {
            color: #0056b3;
        }

        .success-message {
            color: #28a745; 
            margin-top: 20px;
            font-size: 18px;
        }
    </style>
</head>
<body>
    <h2>Confirm Deletion</h2>
    <p>Are you sure you want to delete this travel entry?</p>

    <form action="/deleteTravel" method="post">
        <input type="hidden" name="id" value="${deleteTravel.id}">
        <button type="submit">Yes, Delete</button>
    </form>

    <div class="success-message">
        ${message}
    </div>

    <a href="/traveledList">Go back to list</a>
</body>
</html>
