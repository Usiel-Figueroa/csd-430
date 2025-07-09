<%-- 
  File: deleteState.jsp
  Author: Usiel Figueroa
  Date: July 09, 2025
  Purpose: Display all records and provide a dropdown to select a record for deletion.
  This page uses StateDAO JavaBean to get all records from the database,
  displays them in a table, and provides a dropdown to select the record to delete.
  Reference:
  [Design and Development - Video Production]. (2024, November 7). CRUD Delete [Video]. Bellevue University. 
  https://bellevue.mediaspace.kaltura.com/media/CRUD+Delete/1_exiarn58 
--%>
<%@ page import="java.util.List, beans.State, beans.StateDAO" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete a State Record</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <form action="index.jsp" method="get" class="home-button">
        <input type="submit" value="Home">
    </form>

    <h2>Delete State Record</h2>

    <%-- Use JavaBean to get all states --%>
    <%
        StateDAO dao = new StateDAO();
        List<State> allStates = null;
        try {
            allStates = dao.getAllStates();
        } catch (Exception e) {
            out.println("<p style='color:red;'>⚠️ Error loading states: " + e.getMessage() + "</p>");
        }
    %>

    <%-- Delete selection form --%>
    <form action="processDelete.jsp" method="post">
        <label for="id">Select a State ID to delete:</label>
        <select name="id" id="id" required>
            <% if (allStates != null && !allStates.isEmpty()) {
                for (State s : allStates) {
            %>
                <option value="<%= s.getId() %>"><%= s.getName() %> (ID: <%= s.getId() %>)</option>
            <%   }
               } else { %>
                <option disabled>No states available</option>
            <% } %>
        </select>
        <input type="submit" value="Delete">
    </form>

    <%-- Display all states in a table --%>
    <h3>All States in the Database:</h3>
    <table class="states-table">
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
            <% if (allStates != null && !allStates.isEmpty()) {
                for (State s : allStates) { %>
                    <tr>
                        <td><%= s.getId() %></td>
                        <td><%= s.getName() %></td>
                        <td><%= s.getAbbreviation() %></td>
                        <td><%= s.getPopulation() %></td>
                        <td><%= s.getCapital() %></td>
                        <td><%= s.getRegion() %></td>
                    </tr>
            <%   }
               } else { %>
                <tr>
                    <td colspan="6" style="text-align:center;">No records found.</td>
                </tr>
            <% } %>
        </tbody>
    </table>
</body>
</html>
