<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Travel Destinations</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-image: url('https://i.pinimg.com/originals/3f/00/4f/3f004fbd0825ffbd4b9b11656a38f451.gif'); 
            background-size: cover;
            background-position: center;
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

        #travelsContainer {
            max-width: 600px;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-bottom: 20px;
        }

        form {
            max-width: 400px;
            background-color: rgba(255, 255, 255, 0.8);
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
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

        a {
            display: inline-block;
            margin-top: 10px;
            color: #337ab7;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        #listTravelsLink {
            display: inline-block;
            margin-top: 10px;
            color: #337ab7;
            text-decoration: none;
        }

        #listTravelsLink:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <h2>Places Traveled</h2>

    <form action="/addTravel" method="post">
        <label for="newCity">City:</label>
        <input type="text" id="newCity" name="city" required />

        <label for="newCountry">Country:</label>
        <input type="text" id="newCountry" name="country" required />

        <label for="newRating">Rating:</label>
        <input type="number" id="newRating" name="rating" required />

        <input type="submit" value="Add a new place" />
    </form>

    <form action="/updateForm" method="get">
        <label for="travelId">Enter a Travel ID:</label>
        <input type="text" id="travelId" name="travelId" required />

        <input type="submit" value="Update by ID" />
    </form>

    <form action="/traveledList" method="get">
        <input type="submit" value="List of Traveled Places" />
    </form>

</body>
</html>