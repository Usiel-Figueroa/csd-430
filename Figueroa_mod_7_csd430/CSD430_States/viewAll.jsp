<%--  
  Usiel Figueroa  
  June 23, 2025  
  CSD 430-A311 Server-Side Development  
  Module 7 Assignment: Project Part 2  
  Purpose: Display all records in a table format after insertion  
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.sql.*, beans.State" %>
<html>
<head>
    <title>All States in Database</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

<form action="index.jsp" method="get" class="home-button">
    <input type="submit" value="Home">
</form>

<h2>U.S. States - Current Database Records</h2>
<p>This table shows all records in the database after the new state is added.</p>

<%
    try {
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/CSD430", "student1", "pass");
        Statement stmt = conn.createStatement();
        ResultSet rs = stmt.executeQuery("SELECT * FROM usiel_states_data ORDER BY name ASC");

        out.println("<table>");
        out.println("<thead><tr><th>ID</th><th>Name</th><th>Abbreviation</th><th>Population</th><th>Capital</th><th>Region</th></tr></thead><tbody>");

        while (rs.next()) {
            State s = new State();
            s.setId(rs.getInt("id"));
            s.setName(rs.getString("name"));
            s.setAbbreviation(rs.getString("abbreviation"));
            s.setPopulation(rs.getInt("population"));
            s.setCapital(rs.getString("capital"));
            s.setRegion(rs.getString("region"));

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
        rs.close();
        stmt.close();
        conn.close();
    } catch (Exception e) {
        out.println("<p style='color:red;'>⚠️ Error retrieving data: " + e.getMessage() + "</p>");
    }
%>

</body>
</html>
