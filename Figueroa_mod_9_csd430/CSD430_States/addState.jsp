<%-- 
  Author: Usiel Figueroa  
  Date: June 23, 2025  
  CSD 430-A311 Server-Side Development  
  Module 7 Assignment: Project Part 2  
  Purpose: Form to add a new state to the database
  References  

[Design and Development - Video Production]. (2024, November 7). CRUD Create [Video]. Bellevue University. https://bellevue.mediaspace.kaltura.com/media/CRUD+Create/1_qgkismr9  
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="beans.State" %>
<html>
<head>
    <title>Add New State</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    
</head>
<body>
    <!-- Home button -->
    <form action="index.jsp" method="get" class="home-button">
        <input type="submit" value="Home">
    </form>

    <h2>U.S. States - Add a New State</h2>

    <!-- Input form with HTML validation -->
    <form action="insertState.jsp" method="post">
        <label for="name">State Name:</label><br>
        <input type="text" name="name" required><br>

        <label for="abbreviation">Abbreviation (2 letters):</label><br>
        <input type="text" name="abbreviation" pattern="[A-Za-z]{2}" title="Two-letter abbreviation" required><br>

        <label for="population">Population:</label><br>
        <input type="number" name="population" min="1" required><br>

        <label for="capital">Capital:</label><br>
        <input type="text" name="capital" required><br>

        <label for="region">Region:</label><br>
        <input type="text" name="region" required><br><br>

        <input type="submit" value="Add State">
    </form>
</body>
</html>


