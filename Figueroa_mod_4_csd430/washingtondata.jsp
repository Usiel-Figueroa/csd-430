<%-- 
  Author: Usiel Figueroa
  Date: June 09, 2025
  CSD 430-A311 Server-Side Development 
  Module 4 Assignment: JavaBean
  
  Purpose: This JSP page demonstrates the use of a JavaBean to store and display 
  a list of highlights about Washington State. It formats the data in an HTML table 
  and applies external CSS for styling.
  
  References:
  
[Design and Development - Video Production]. (2024, November 7). JavaBeans [Video]. Bellevue University. https://bellevue.mediaspace.kaltura.com/media/JavaBeans/1_8ssdtanr 

(2023, November 1). JavaBean class in Java. Geeksforgeeks. Retrieved June 9, 2025, from https://www.geeksforgeeks.org/javabean-class-java/ 

(2023, February 22). JavaBeans. Codecademy. Retrieved June 9, 2025, from https://www.codecademy.com/resources/docs/java/javabeans  

(2025, April 4). Introduction to JSP. Geeksforgeeks. Retrieved May 27, 2025, from https://www.geeksforgeeks.org/introduction-to-jsp/  
--%>

<%@ page import="java.util.*, beans.LocationHighlightBean" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Washington State - The Evergreen State</title>
    
    <!-- Link to external CSS stylesheet located in /css/style.css -->
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

    <!-- Page heading and brief description -->
    <h1>Welcome to Washington State</h1>
    <p>Washington is known for its lush evergreen forests, majestic mountains, and diverse culture. 
    I visited Washington to enjoy its natural beauty and spend time with family.</p>

    <h2>Highlights of Washington</h2>

    <%
        // Instantiate a list of LocationHighlightBean objects to hold data
        List<LocationHighlightBean> highlights = new ArrayList<LocationHighlightBean>();

        // Populate the list with 5 records, each using 5 data fields
        highlights.add(new LocationHighlightBean(
            "Olympic National Park", 
            "Nature", 
            "The park includes 62 miles of wilderness, and coastline.", 
            "2016", 
            "Must See"));

        highlights.add(new LocationHighlightBean(
            "Seattle", 
            "City", 
            "The cultural and economic hub of the state, known for the Space Needle.", 
            "2009", 
            "Iconic"));

        highlights.add(new LocationHighlightBean(
            "Mount Rainier", 
            "Nature", 
            "An iconic active volcano and national park.", 
            "2016", 
            "Bucket List"));

        highlights.add(new LocationHighlightBean(
            "Leavenworth", 
            "Town", 
            "A charming village in the Cascade Mountains.", 
            "2020", 
            "Hidden Gem"));

        highlights.add(new LocationHighlightBean(
            "Mount Vernon", 
            "Family", 
            "Visited family members and enjoyed food and waterfront parks.", 
            "2022", 
            "Personal Favorite"));
    %>

    <!-- Table structure to display the list of highlights -->
    <table>
        <tr>
            <!-- Table header row describing each field -->
            <th>Place</th>
            <th>Category</th>
            <th>Description</th>
            <th>Year Visited</th>
            <th>Highlight Type</th>
        </tr>

        <%
            // Loop through the list and output each bean's data in a row
            for (LocationHighlightBean item : highlights) {
        %>
            <tr>
                <!-- Output the values of each field using getter methods -->
                <td><%= item.getPlace() %></td>
                <td><%= item.getCategory() %></td>
                <td><%= item.getDescription() %></td>
                <td><%= item.getYearVisited() %></td>
                <td><%= item.getHighlightType() %></td>
            </tr>
        <%
            } // end of for loop
        %>
    </table>

    <!-- Footer section with credit -->
    <footer>
        <p>Created by Usiel Figueroa | CSD 430 - Module 4 Assignment: JavaBean</p>
    </footer>

</body>
</html>