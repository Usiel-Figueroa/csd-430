<%-- 
  File: processDelete.jsp
  Author: Usiel Figueroa
  Date: July 09, 2025
  Purpose: Process the deletion of a state by ID and display the updated list.
  Reference
  [Design and Development - Video Production]. (2024, November 7). CRUD Delete [Video]. Bellevue University. https://bellevue.mediaspace.kaltura.com/media/CRUD+Delete/1_exiarn58 
--%>
<%@ page import="beans.State, beans.StateDAO, java.util.*" %>
<%
    int id = Integer.parseInt(request.getParameter("id"));
    StateDAO dao = new StateDAO();

    // Call the correct delete method in StateDAO
    boolean deleted = dao.deleteState(id);
%>
<html>
<head>
    <title>Deletion Result</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h2>Delete State Result</h2>
    <p style="color:<%= deleted ? "green" : "red" %>;">
        <%= deleted ? "Record deleted successfully." : "Deletion failed." %>
    </p>

    <%-- Include the updated deleteState.jsp page to show current records --%>
    <jsp:include page="deleteState.jsp" />
</body>
</html>
