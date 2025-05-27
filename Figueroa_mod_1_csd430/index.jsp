<%-- 
  Author: Usiel Figueroa
  Date: May 26, 2025
  CSD 430-A311 Server-Side Development 
  Module 1 Assignment: Project Setup and Repository 
  Purpose: Display a basic JSP page with HTML and Java code
  
  References 

[Design and Development - Video Production]. (2024, November 7). Tomcat Eclipse [Video]. Bellevue University. https://bellevue.mediaspace.kaltura.com/media/Tomcat+Eclipse/1_rj04forw 

(n.d.). HTML HEX Colors. W3schools. Retrieved May 26, 2025, from https://www.w3schools.com/html/html_colors_hex.asp 

(n.d.). Eclipse Installer 2025-03 R. Eclipse. Retrieved May 26, 2025, from https://www.eclipse.org/downloads/packages/installer 
--%>

<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.util.Date" %>

<html>
  <head>
    <title>Module 1 - Usiel Figueroa</title>
    <style>
      body {
        font-family: Arial, sans-serif;
        margin: 30px;
        background-color: #f4f4f4;
        color: #333;
      }
      h1 {
        color: #0000c6;
      }
      p {
        font-size: 16px;
      }
      .timestamp {
        margin-top: 20px;
        font-style: italic;
        color: #555;
      }
    </style>
  </head>
  <body>

    <h1>Usiel Figueroa</h1>

   
    <p><strong>Course:</strong> CSD 430-A311 Server-Side Development</p>
    <p><strong>Assignment:</strong> Module 1 - Project Setup and Repository</p>

    <hr>

    <%
        // Create a formatter to show day of week, full date, and time
        SimpleDateFormat formatter = new SimpleDateFormat("EEEE, MMMM d, yyyy 'at' hh:mm a");
        String currentDateTime = formatter.format(new Date());
    %>

    <p class="timestamp"><strong>Current Date and Time:</strong> <%= currentDateTime %></p>

  </body>
</html>
