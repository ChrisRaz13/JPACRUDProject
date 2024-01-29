<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Traveled Places</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to right, #2980B9, #6DD5FA); 
            color: #000; 
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        h2 {
            color: #000; 
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
            background-color: rgba(255, 255, 255, 0.8); 
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #4CAF50;
            color: #fff;
        }

        .action-column {
            display: flex;
            gap: 8px;
        }

        .delete-form,
        .update-form {
            display: inline-block;
        }

        .delete-link,
        .update-link {
            text-decoration: none;
            font-weight: bold;
            cursor: pointer;
        }

        .delete-link:hover,
        .update-link:hover {
            color: #D32F2F;
        }

        a.back-home {
            display: block;
            margin-top: 20px;
            color: #000; 
            text-decoration: none;
            font-weight: bold;
        }

        a.back-home:hover {
            text-decoration: underline;
        }
    </style>
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
                    <td class="action-column">
                        <form class="delete-form" action="/deleteForm" method="get">
                            <input type="hidden" name="travelId" value="${travel.id}">
                            <button type="submit" class="delete-link">Delete</button>
                        </form>
                        <form class="update-form" action="/updateForm" method="get">
                            <input type="hidden" name="travelId" value="${travel.id}">
                            <button type="submit" class="update-link">Update</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <a href="/" class="back-home">Go Back Home</a>

</body>
</html>