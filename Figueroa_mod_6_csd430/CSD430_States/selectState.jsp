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
    <title>Select a State</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    
</head>
<body>
    <h2>Select a State ID to View Details</h2>

    <!-- Form to send selected state ID to displayState.jsp -->
    <form action="displayState.jsp" method="post">
        <label for="stateId">Choose a State ID:</label>
        <select name="stateId" id="stateId">
            <%
                try {
                    // Load MySQL driver
                    Class.forName("com.mysql.cj.jdbc.Driver");

                    // Connect to the CSD430 database
                    Connection conn = DriverManager.getConnection(
                        "jdbc:mysql://localhost:3306/CSD430", "student1", "pass");

                    // Query to fetch state IDs and names
                    Statement stmt = conn.createStatement();
                    ResultSet rs = stmt.executeQuery("SELECT id, name FROM data");

                    // Dynamically populate the dropdown options
                    while(rs.next()) {
                        int id = rs.getInt("id");
                        String name = rs.getString("name");
                        out.println("<option value='" + id + "'>" + id + " - " + name + "</option>");
                    }

                    rs.close();
                    stmt.close();
                    conn.close();
                } catch(Exception e) {
                    out.println("Error fetching state list: " + e.getMessage());
                }
            %>
        </select>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
