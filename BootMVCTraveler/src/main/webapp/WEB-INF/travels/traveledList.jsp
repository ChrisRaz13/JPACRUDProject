<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="en">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List Traveled Places</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 20px;
            padding: 20px;
            background-color: #f8f9fa;
        }

        h2 {
            color: #007bff;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            border: 1px solid #dee2e6;
            padding: 8px;
            text-align: left;
        }

        th {
            background-color: #007bff;
            color: #fff;
        }

        .delete-form {
            display: inline-block; 
        }

        .delete-link {
            text-decoration: none;
            color: #dc3545; 
            font-weight: bold;
            cursor: pointer;
        }

        .delete-link:hover {
            color: #c82333;
        }

        a.back-home {
            display: block;
            margin-top: 20px;
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
                    <td>
                        <form class="delete-form" action="/deleteForm" method="get">
                            <input type="hidden" name="travelId" value="${travel.id}">
                            <button type="submit" class="delete-link">Delete</button>
                        </form>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

    <a href="/" class="back-home">Go Back Home</a>

</body>
</html>