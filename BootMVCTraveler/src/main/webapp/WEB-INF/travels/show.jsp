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
            background-color: #f9f9f9;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
            text-align: center;
        }

        h1 {
            color: #333;
            margin-bottom: 20px;
        }

        div {
            max-width: 600px;
            background-color: #fff;
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
            color: #555;
        }

        strong {
            font-weight: bold;
        }

        a {
            display: block;
            margin-top: 20px;
            color: #337ab7;
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
    </div>

</body>
</html>