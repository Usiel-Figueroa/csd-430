<%-- 
  Author: Usiel Figueroa
  Date: May 27, 2025
  CSD 430-A311 Server-Side Development 
  Module 2 Assignment: Java Scriplet - Data Display 
  Purpose: The purpose of the code is to dynamically display information about the selected topic of Washington State using JSP scriptlets and an HTML table styled with external CSS.
  
  References 


(n.d.). HTML HEX Colors. W3schools. Retrieved May 26, 2025, from https://www.w3schools.com/html/html_colors_hex.asp 

(n.d.). JSP - Expression Language (EL). Tutorialspoint. Retrieved May 27, 2025, from https://www.tutorialspoint.com/jsp/jsp_expression_language.htm 

(2025, April 4). Introduction to JSP. Geeksforgeeks. Retrieved May 27, 2025, from https://www.geeksforgeeks.org/introduction-to-jsp/ 

(n.d.). An official website of Washington State. WA.gov. Retrieved May 27, 2025, from https://wa.gov/recreation 

[Susan Ceklosky]. (2014, March 5). Applying A CSS Layout To A JSP Web Application [Video]. YouTube. https://www.youtube.com/watch?v=YB9PjgLZhUk 

--%>


<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Washington State - The Evergreen State</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    
</head>
<body>

<h1>Welcome to Washington State</h1>
<p>Washington is known for its lush evergreen forests, majestic mountains, and diverse culture. I visited Washington to enjoy its natural beauty and spend time with family.</p>

<h2>Highlights of Washington</h2>
<%
    // Define a class for holding the data
    class LocationHighlight {
        String place;
        String category;
        String description;

        LocationHighlight(String place, String category, String description) {
            this.place = place;
            this.category = category;
            this.description = description;
        }
    }

    // Create and populate the list with 5 records
    List<LocationHighlight> highlights = new ArrayList<LocationHighlight>();
    highlights.add(new LocationHighlight("Olympic National Park", "Nature", "The park includes 62 miles of wilderness, and coastline."));
    highlights.add(new LocationHighlight("Seattle", "City", "The cultural and economic hub of the state, known for the Space Needle."));
    highlights.add(new LocationHighlight("Mount Rainier", "Nature", "An iconic active volcano and national park."));
    highlights.add(new LocationHighlight("Leavenworth", "Town", "A charming village in the Cascade Mountains."));
    highlights.add(new LocationHighlight("Mount Vernon", "Family", "Visited family members and enjoyed food and waterfront parks."));
%>

<table>
    <tr>
        <th>Place</th>
        <th>Category</th>
        <th>Description</th>
    </tr>
    <%
        for (LocationHighlight item : highlights) {
    %>
        <tr>
            <td><%= item.place %></td>
            <td><%= item.category %></td>
            <td><%= item.description %></td>
        </tr>
    <%
        }
    %>
</table>

<footer>
    <p>Created by Usiel Figueroa | CSD 430 - Module 2 Assignment</p>
</footer>

</body>
</html>
