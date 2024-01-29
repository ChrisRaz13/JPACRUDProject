<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Show Travel Details</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #3498db, #8e44ad); 
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            text-align: center;
            color: #000; 
        }

        h1 {
            margin-bottom: 20px;
        }

        div {
            max-width: 600px;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
        }

        ul {
            list-style-type: none;
            padding: 0;
        }

        li {
            margin-bottom: 15px;
            color: #333; 
        }

        strong {
            font-weight: bold;
        }

        a {
            display: block;
            margin-top: 20px;
            color: #3498db; 
            text-decoration: none;
            font-weight: bold;
        }

        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <div>
        <h1>Travel Details</h1>
        <ul>
            <li><strong>City:</strong> ${destinations.city}</li>
            <li><strong>Country:</strong> ${destinations.country}</li>
            <li><strong>Rating:</strong> ${destinations.rating}</li>
        </ul>
        <a href="/">Back to Home</a>
        <a href="/traveledList" class="back-to-list">Back to Traveled List</a>
    </div>

</body>
</html>