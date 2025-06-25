/**
 * Usiel Figueroa 
 * June 10, 2025
 * CSD 430-A311 Server-Side Development
 * Module 5 & 6 Assignment: Working with CRUD-READ, JDBC, & JavaBeans
 * Project Part 1 & 2
 * State.java
 * JavaBean used to represent a state record from the database.
 * Contains fields for ID, name, abbreviation, population, capital, and region.
 *
 * References 

[Design and Development - Video Production]. (2024, November 7). Project Intro [Video]. Bellevue University. https://bellevue.mediaspace.kaltura.com/media/Project+Intro/1_ciyf4naf 

Sharif, A. (2022, December 20). What is CRUD? Crowdstrike. Retrieved June 10, 2025, from https://www.crowdstrike.com/en-us/cybersecurity-101/observability/crud/ 

(2019, September 2). Java JDBC CRUD Tutorial: SQL Insert, Select, Update, and Delete Examples. Codejava. Retrieved June 10, 2025, from https://www.codejava.net/java-se/jdbc/jdbc-tutorial-sql-insert-select-update-and-delete-examples 

(n.d.). MySQL Tutorial. W3schools. Retrieved June 10, 2025, from https://www.w3schools.com/MySQL/default.asp 

(2023, June 26). The 50 States of America | U.S. State Information. Infoplease. Retrieved June 10, 2025, from https://www.infoplease.com/us/states 
 * 
 */

package beans;

import java.io.Serializable;

public class State implements Serializable {
    private static final long serialVersionUID = 1L;
    
    private int id;
    private String name;
    private String abbreviation;
    private int population;
    private String capital;
    private String region;

    public State() {}

    public State(String name, String abbreviation, int population, String capital, String region) {
        this.name = name;
        this.abbreviation = abbreviation;
        this.population = population;
        this.capital = capital;
        this.region = region;
    }

    // Getters and setters...
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getName() { return name; }
    public void setName(String name) { this.name = name; }
    public String getAbbreviation() { return abbreviation; }
    public void setAbbreviation(String abbreviation) { this.abbreviation = abbreviation; }
    public int getPopulation() { return population; }
    public void setPopulation(int population) { this.population = population; }
    public String getCapital() { return capital; }
    public void setCapital(String capital) { this.capital = capital; }
    public String getRegion() { return region; }
    public void setRegion(String region) { this.region = region; }

    @Override
    public String toString() {
        return "State{" +
                "id=" + id +
                ", name='" + name + '\'' +
                ", abbreviation='" + abbreviation + '\'' +
                ", population=" + population +
                ", capital='" + capital + '\'' +
                ", region='" + region + '\'' +
                '}';
    }
}