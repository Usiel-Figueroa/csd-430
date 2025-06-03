<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--  
  Author: Usiel Figueroa  
  Date: June 02, 2025  
  CSD 430-A311 Server-Side Development  
  Module 3 Assignment: Working with JSP Forms  
  Purpose: Display job application data submitted from the form in an HTML table
  
  References
  
  [Design and Development - Video Production]. (2024, November 4). Forms [Video]. Bellevue University. https://bellevue.mediaspace.kaltura.com/media/Forms/1_f9er6v1b 

  (2023, September 12). Creating HIPAA Compliant Secure Web Forms: What You Need to Know. Luxsci. Retrieved June 2, 2025, from https://luxsci.com/blog/creating-secure-web-forms.html     
--%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Application Received</title>
    <style>
        body {
            background-color: #f5f5f5;
            font-family: Arial, sans-serif;
            color: #001f3f;
        }

        h1 {
            text-align: center;
            color: #001f3f;
        }

        table {
            width: 60%;
            margin: auto;
            border-collapse: collapse;
            background-color: white;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 12px;
            text-align: left;
        }

        th {
            background-color: #001f3f;
            color: white;
        }

        caption {
            caption-side: top;
            margin-bottom: 10px;
            font-size: 1.2em;
            font-weight: bold;
        }
    </style>
</head>
<body>

<h1>Application Confirmation</h1>

<table>
    <caption>Your Submitted Information</caption>
    <tr>
        <th>Field</th>
        <th>Value</th>
    </tr>
    <tr>
        <td>First Name</td>
        <td><%= request.getParameter("firstName") %></td>
    </tr>
    <tr>
        <td>Last Name</td>
        <td><%= request.getParameter("lastName") %></td>
    </tr>
    <tr>
        <td>Email</td>
        <td><%= request.getParameter("email") %></td>
    </tr>
    <tr>
        <td>Phone Number</td>
        <td><%= request.getParameter("phone") %></td>
    </tr>
    <tr>
        <td>Position Applied For</td>
        <td><%= request.getParameter("position") %></td>
    </tr>
    <tr>
        <td>Available Start Date</td>
        <td><%= request.getParameter("startDate") %></td>
    </tr>
</table>

</body>
</html>
