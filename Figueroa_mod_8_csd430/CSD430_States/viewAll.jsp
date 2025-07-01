<%--  
  Usiel Figueroa  
  July 1, 2025  
  CSD 430-A311 Server-Side Development  
  Module 8 Assignment: Project Part 3  
  Purpose: Display all records using JavaBean (StateDAO) and not direct JDBC  
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*, beans.State, beans.StateDAO" %>
<html>
<head>
    <title>All States in Database</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<!-- Home button -->
<form action="index.jsp" method="get" class="home-button">
    <input type="submit" value="Home">
</form>

<h2>U.S. States - Current Database Records</h2>
<p>This table shows all records in the database after the new state is added or updated.</p>

<%
    StateDAO dao = new StateDAO();
    try {
        List<State> states = dao.getAllStates();

        out.println("<table>");
        out.println("<thead><tr><th>ID</th><th>Name</th><th>Abbreviation</th><th>Population</th><th>Capital</th><th>Region</th></tr></thead><tbody>");

        for (State s : states) {
            out.println("<tr>");
            out.println("<td>" + s.getId() + "</td>");
            out.println("<td>" + s.getName() + "</td>");
            out.println("<td>" + s.getAbbreviation() + "</td>");
            out.println("<td>" + s.getPopulation() + "</td>");
            out.println("<td>" + s.getCapital() + "</td>");
            out.println("<td>" + s.getRegion() + "</td>");
            out.println("</tr>");
        }

        out.println("</tbody></table>");
    } catch (Exception e) {
        out.println("<p style='color:red;'>⚠️ Error retrieving data from bean: " + e.getMessage() + "</p>");
    }
%>

</body>
</html>
