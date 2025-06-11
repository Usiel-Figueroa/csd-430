<%--  

Usiel Figueroa  

June 10, 2025 

CSD 430-A311 Server-Side Development 

Module 5 & 6 Assignment: Working with CRUD-READ, JDBC, & JavaBeans 

Project Part 1 

JavaBean used to represent a state record from the database. 

Contains fields for ID, name, abbreviation, population, capital, and region. 

  

References  

 

[Design and Development - Video Production]. (2024, November 7). Project Intro [Video]. Bellevue University. https://bellevue.mediaspace.kaltura.com/media/Project+Intro/1_ciyf4naf  

 

Sharif, A. (2022, December 20). What is CRUD? Crowdstrike. Retrieved June 10, 2025, from https://www.crowdstrike.com/en-us/cybersecurity-101/observability/crud/  

 

(2019, September 2). Java JDBC CRUD Tutorial: SQL Insert, Select, Update, and Delete Examples. Codejava. Retrieved June 10, 2025, from https://www.codejava.net/java-se/jdbc/jdbc-tutorial-sql-insert-select-update-and-delete-examples  

 

(n.d.). MySQL Tutorial. W3schools. Retrieved June 10, 2025, from https://www.w3schools.com/MySQL/default.asp  

 

(2023, June 26). The 50 States of America | U.S. State Information. Infoplease. Retrieved June 10, 2025, from https://www.infoplease.com/us/states  

--%> 

 

<%@ page import="java.sql.*" %>
<html>
<head>
    <title>State Details</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    
</head>
<body>
    <h2>State Information</h2>

    <%
        // Get selected stateId from form
        String stateId = request.getParameter("stateId");

        try {
            // Load JDBC driver
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establish connection to database
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/CSD430", "student1", "pass");

            // Prepare statement to select record by ID
            PreparedStatement ps = conn.prepareStatement("SELECT * FROM data WHERE id = ?");
            ps.setInt(1, Integer.parseInt(stateId));
            ResultSet rs = ps.executeQuery();

            // If record is found, display in HTML table
            if(rs.next()) {
    %>
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Abbreviation</th>
                <th>Population</th>
                <th>Capital</th>
                <th>Region</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><%= rs.getInt("id") %></td>
                <td><%= rs.getString("name") %></td>
                <td><%= rs.getString("abbreviation") %></td>
                <td><%= rs.getInt("population") %></td>
                <td><%= rs.getString("capital") %></td>
                <td><%= rs.getString("region") %></td>
            </tr>
        </tbody>
    </table>
    <%
            } else {
                out.println("<p>No record found for ID: " + stateId + "</p>");
            }

            // Clean up
            rs.close();
            ps.close();
            conn.close();

        } catch(Exception e) {
            out.println("<p>Error retrieving state data: " + e.getMessage() + "</p>");
        }
    %>
</body>
</html>
