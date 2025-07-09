<%--  
    Author: Usiel Figueroa  
    Date: July 01, 2025  
    Assignment: CSD 430-A311 Server-Side Development  
    Module 8 - Project Part 3  

    Purpose:  
    This page retrieves a selected record by ID using the JavaBean (StateDAO)  
    and displays a form pre-filled with that record’s current values.  
    The user can edit the values except for the ID field (read-only).  
    
    Reference
    [Design and Development - Video Production]. (2024, November 7). CRUD Update [Video]. Bellevue University. https://bellevue.mediaspace.kaltura.com/media/CRUD+Update/1_nbbhpkdp
--%>
<%@ page import="beans.StateDAO, beans.State" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit State</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>

<!-- Home Button -->
<form action="index.jsp" method="get" class="home-button">
    <input type="submit" value="Home">
</form>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    StateDAO dao = new StateDAO();
    State state = dao.getStateById(id);
%>

<h2>Editing State: <%=state.getName()%></h2>

<form action="updateStateAction.jsp" method="post">
    <label>ID (not editable):</label>
    <input type="text" name="id" value="<%=state.getId()%>" readonly><br>

    <label>Name:</label>
    <input type="text" name="name" value="<%=state.getName()%>" required><br>

    <label>Abbreviation:</label>
    <input type="text" name="abbreviation" value="<%=state.getAbbreviation()%>" maxlength="2" required><br>

    <label>Population:</label>
    <input type="number" name="population" value="<%=state.getPopulation()%>" required><br>

    <label>Capital:</label>
    <input type="text" name="capital" value="<%=state.getCapital()%>" required><br>

    <label>Region:</label>
    <input type="text" name="region" value="<%=state.getRegion()%>" required><br>

    <br>
    <input type="submit" value="Update State">
</form>
<p style="color: navy;">
    Note: Although only population typically changes, this form allows updating most fields for learning purposes.
</p>

</body>
</html>
