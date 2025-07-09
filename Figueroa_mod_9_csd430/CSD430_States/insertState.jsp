<%--  
  Usiel Figueroa  
  June 23, 2025  
  CSD 430-A311 Server-Side Development  
  Module 7 Assignment: Project Part 2  
  Purpose: Insert new record into DB and display all records in a table  
  References:  
  [Design and Development - Video Production]. (2024, November 7). CRUD Create [Video]. Bellevue University.  
  https://bellevue.mediaspace.kaltura.com/media/CRUD+Create/1_qgkismr9  
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*, beans.State" %>
<html>
<head>
    <title>Insert State Result</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<!-- Home Button -->
<form action="index.jsp" method="get" class="home-button">
    <input type="submit" value="Home">
</form>

<h2>Insert Result</h2>

<%
    String name = request.getParameter("name");
    String abbreviation = request.getParameter("abbreviation");
    String capital = request.getParameter("capital");
    String region = request.getParameter("region");
    String populationStr = request.getParameter("population");
    String errorMsg = null;

    State newState = new State();
    newState.setName(name);
    newState.setAbbreviation(abbreviation);
    newState.setCapital(capital);
    newState.setRegion(region);

    try {
        int population = Integer.parseInt(populationStr);
        if (population <= 0) throw new IllegalArgumentException("Population must be greater than zero.");
        newState.setPopulation(population);

        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/CSD430", "student1", "pass");

        String sql = "INSERT INTO usiel_states_data (name, abbreviation, population, capital, region) VALUES (?, ?, ?, ?, ?)";
        PreparedStatement ps = conn.prepareStatement(sql);
        ps.setString(1, newState.getName());
        ps.setString(2, newState.getAbbreviation());
        ps.setInt(3, newState.getPopulation());
        ps.setString(4, newState.getCapital());
        ps.setString(5, newState.getRegion());

        ps.executeUpdate();

        out.println("<p style='color:green;'>✅ State added successfully!</p>");
        out.println("<p><a href='viewAll.jsp'> View All Records</a></p>");

        ps.close();
        conn.close();
    } catch (SQLIntegrityConstraintViolationException e) {
        errorMsg = "⚠️ This state already exists.";
    } catch (NumberFormatException e) {
        errorMsg = "⚠️ Population must be a number.";
    } catch (IllegalArgumentException e) {
        errorMsg = "⚠️ " + e.getMessage();
    } catch (Exception e) {
        errorMsg = "⚠️ Error inserting data: " + e.getMessage();
    }

    if (errorMsg != null) {
        out.println("<p style='color:red;'>" + errorMsg + "</p>");
    }
%>

<a href="addState.jsp"><button>Add Another State</button></a>
</body>
</html>
