// Author: Usiel Figueroa
// Date: June 09, 2025
// Assignment: CSD 430-A311 Module 4 - JavaBean
// Purpose: This JavaBean class holds data for highlights of Washington State,
// including place, category, and description. Used in JSP for dynamic display.

// References
// [Design and Development - Video Production]. (2024, November 7). JavaBeans [Video]. Bellevue University. https://bellevue.mediaspace.kaltura.com/media/JavaBeans/1_8ssdtanr 
// (2023, November 1). JavaBean class in Java. Geeksforgeeks. Retrieved June 9, 2025, from https://www.geeksforgeeks.org/javabean-class-java/ 
// (2023, February 22). JavaBeans. Codecademy. Retrieved June 9, 2025, from https://www.codecademy.com/resources/docs/java/javabeans  
// (2025, April 4). Introduction to JSP. Geeksforgeeks. Retrieved May 27, 2025, from https://www.geeksforgeeks.org/introduction-to-jsp/  

package beans;

import java.io.Serializable;

/**
 * JavaBean for storing location highlight data in Washington State.
 * Implements Serializable for use in JSP.
 */
public class LocationHighlightBean implements Serializable {

    private static final long serialVersionUID = 1L;

    // Core fields
    private String place;
    private String category;
    private String description;
    private String yearVisited;
    private String highlightType;

    // Default constructor
    public LocationHighlightBean() {}

    // Full constructor
    public LocationHighlightBean(String place, String category, String description, String yearVisited, String highlightType) {
        this.place = place;
        this.category = category;
        this.description = description;
        this.yearVisited = yearVisited;
        this.highlightType = highlightType;
    }

    // Getters and setters
    public String getPlace() { return place; }
    public void setPlace(String place) { this.place = place; }

    public String getCategory() { return category; }
    public void setCategory(String category) { this.category = category; }

    public String getDescription() { return description; }
    public void setDescription(String description) { this.description = description; }

    public String getYearVisited() { return yearVisited; }
    public void setYearVisited(String yearVisited) { this.yearVisited = yearVisited; }

    public String getHighlightType() { return highlightType; }
    public void setHighlightType(String highlightType) { this.highlightType = highlightType; }
}

