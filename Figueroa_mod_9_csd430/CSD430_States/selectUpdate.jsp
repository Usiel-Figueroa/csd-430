<%--  
    Author: Usiel Figueroa  
    Date: July 01, 2025  
    Assignment: CSD 430-A311 Server-Side Development  
    Module 8 - Project Part 3  

    Purpose:  
    This page presents the user with a dropdown list of state records (ID and name)  
    retrieved from the database using the JavaBean (StateDAO).  
    The selected record ID is submitted to the next page for editing. 
    
    Reference
    [Design and Development - Video Production]. (2024, November 7). CRUD Update [Video]. Bellevue University. https://bellevue.mediaspace.kaltura.com/media/CRUD+Update/1_nbbhpkdp 
--%>
<%@ page import="java.util.*, beans.StateDAO, beans.State" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Select a State to Update</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>

<!-- Home Button -->
<form action="index.jsp" method="get" class="home-button">
    <input type="submit" value="Home">
</form>

<h2>Update a State Record</h2>
<p>Select a state to update:</p>

<form action="updateStateForm.jsp" method="get">
    <label for="id">State:</label>
    <select name="id" required>
        <%
            StateDAO dao = new StateDAO();
            List<State> states = dao.getAllStates();
            for (State state : states) {
        %>
        <option value="<%=state.getId()%>"><%=state.getName()%> (ID: <%=state.getId()%>)</option>
        <% } %>
    </select>
    <br><br>
    <input type="submit" value="Edit Selected State">
</form>

</body>
</html>
