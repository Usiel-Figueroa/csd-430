<%--  
    Author: Usiel Figueroa  
    Date: July 01, 2025  
    Assignment: CSD 430-A311 Server-Side Development  
    Module 8 - Project Part 3  

    Purpose:  
    This page receives the updated values from the form, updates the database  
    via the JavaBean (StateDAO), and displays the updated record in a table. 
    
    Reference
    [Design and Development - Video Production]. (2024, November 7). CRUD Update [Video]. Bellevue University. https://bellevue.mediaspace.kaltura.com/media/CRUD+Update/1_nbbhpkdp 
--%>
<%@ page import="beans.StateDAO, beans.State" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>State Updated</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>

<!-- Home Button -->
<form action="index.jsp" method="get" class="home-button">
    <input type="submit" value="Home">
</form>

<%
    State state = new State();
    state.setId(Integer.parseInt(request.getParameter("id")));
    state.setName(request.getParameter("name"));
    state.setAbbreviation(request.getParameter("abbreviation"));
    state.setPopulation(Integer.parseInt(request.getParameter("population")));
    state.setCapital(request.getParameter("capital"));
    state.setRegion(request.getParameter("region"));

    StateDAO dao = new StateDAO();
    boolean success = dao.updateState(state);
%>

<h2>Update Result</h2>

<% if (success) { %>
    <p style="color:green;">✅ State record updated successfully!</p>
    <table>
        <tr><th>ID</th><th>Name</th><th>Abbreviation</th><th>Population</th><th>Capital</th><th>Region</th></tr>
        <tr>
            <td><%=state.getId()%></td>
            <td><%=state.getName()%></td>
            <td><%=state.getAbbreviation()%></td>
            <td><%=state.getPopulation()%></td>
            <td><%=state.getCapital()%></td>
            <td><%=state.getRegion()%></td>
        </tr>
    </table>
<% } else { %>
    <p style="color:red;">⚠️ Error updating the record. Please try again.</p>
<% } %>

</body>
</html>
