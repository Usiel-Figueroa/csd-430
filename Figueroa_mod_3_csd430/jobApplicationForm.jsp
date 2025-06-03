<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%--  
  Author: Usiel Figueroa  
  Date: June 02, 2025  
  CSD 430-A311 Server-Side Development  
  Module 3 Assignment: Working with JSP Forms  
  Purpose: Create a JSP form for a job application and gather user data
  
  References
  
  [Design and Development - Video Production]. (2024, November 4). Forms [Video]. Bellevue University. https://bellevue.mediaspace.kaltura.com/media/Forms/1_f9er6v1b 

  (2023, September 12). Creating HIPAA Compliant Secure Web Forms: What You Need to Know. Luxsci. Retrieved June 2, 2025, from https://luxsci.com/blog/creating-secure-web-forms.html   
--%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Job Application Form</title>
    <style>
        body {
            background-color: #f5f5f5; /* light grey */
            font-family: Arial, sans-serif;
            color: #001f3f; /* navy */
        }

        h1 {
            color: #001f3f;
            text-align: center;
        }

        form {
            background-color: white;
            max-width: 600px;
            margin: auto;
            padding: 20px;
            border-radius: 10px;
            border: 1px solid #ccc;
        }

        label {
            display: block;
            margin-top: 15px;
        }

        input, select {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        input[type="submit"] {
            background-color: #001f3f;
            color: white;
            cursor: pointer;
            margin-top: 20px;
        }

        input[type="submit"]:hover {
            background-color: #003366;
        }

        .required {
            color: red;
        }
    </style>
</head>
<body>

<h1>Job Application Form</h1>

<form action="jobApplicationResult.jsp" method="POST">
    <label for="firstName">First Name: <span class="required">*</span></label>
    <input type="text" name="firstName" required>

    <label for="lastName">Last Name: <span class="required">*</span></label>
    <input type="text" name="lastName" required>

    <label for="email">Email: <span class="required">*</span></label>
    <input type="email" name="email" required>

    <label for="phone">Phone Number: <span class="required">*</span></label>
    <input type="tel" name="phone" required pattern="[0-9]{10}" placeholder="1234567890">

    <label for="position">Applying for Position: <span class="required">*</span></label>
    <select name="position" required>
        <option value="">-- Select a position --</option>
        <option value="Software Developer">Software Developer</option>
        <option value="Graphic Designer">Graphic Designer</option>
        <option value="Cybersecurity">Cybersecurity</option>
        <option value="Data Analyst">Data Analyst</option>
    </select>

    <label for="startDate">When can you start? <span class="required">*</span></label>
    <input type="date" name="startDate" required>

    <input type="submit" value="Submit Application">
</form>

</body>
</html>
