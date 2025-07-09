/**
 * Author: Usiel Figueroa  
 * Date: July 01, 2025  
 * Assignment: CSD 430-A311 Server-Side Development  
 * Module 8 - Project Part 3  
 * 
 * Purpose:  
 * This JavaBean (DAO - Data Access Object) encapsulates all the database operations  
 * related to the 'State' object. It provides reusable methods for:
 *  - CRUD: Create, Read, Update, and Delete a state record - Professor Instructions. 
 *
 * This class allows the JSPs to remain presentation-focused while this Bean handles all  
 * database access.
 * 
 * Reference:
 [Design and Development - Video Production]. (2024, November 7). CRUD Delete [Video]. Bellevue University. https://bellevue.mediaspace.kaltura.com/media/CRUD+Delete/1_exiarn58 


[Design and Development - Video Production]. (2024, November 7). CRUD Update [Video]. Bellevue University. https://bellevue.mediaspace.kaltura.com/media/CRUD+Update/1_nbbhpkdp 


[Design and Development - Video Production]. (2024, November 7). Project Intro [Video]. Bellevue University. https://bellevue.mediaspace.kaltura.com/media/Project+Intro/1_ciyf4naf  

 

Sharif, A. (2022, December 20). What is CRUD? Crowdstrike. Retrieved June 10, 2025, from https://www.crowdstrike.com/en-us/cybersecurity-101/observability/crud/  

 

(2019, September 2). Java JDBC CRUD Tutorial: SQL Insert, Select, Update, and Delete Examples. Codejava. Retrieved June 10, 2025, from https://www.codejava.net/java-se/jdbc/jdbc-tutorial-sql-insert-select-update-and-delete-examples  

 

(n.d.). MySQL Tutorial. W3schools. Retrieved June 10, 2025, from https://www.w3schools.com/MySQL/default.asp  

 

(2023, June 26). The 50 States of America | U.S. State Information. Infoplease. Retrieved June 10, 2025, from https://www.infoplease.com/us/states 
 */

package beans;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class StateDAO {

    // JDBC connection details
    private final String jdbcURL = "jdbc:mysql://localhost:3306/CSD430";
    private final String dbUser = "student1";
    private final String dbPass = "pass";

    /**
     * Retrieve all state records from the database.
     * @return List of State objects
     */
    public List<State> getAllStates() throws ClassNotFoundException, SQLException {
        List<State> states = new ArrayList<>();
        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPass);
             Statement stmt = conn.createStatement();
             ResultSet rs = stmt.executeQuery("SELECT * FROM usiel_states_data ORDER BY name ASC")) {

            while (rs.next()) {
                State s = new State();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setAbbreviation(rs.getString("abbreviation"));
                s.setPopulation(rs.getInt("population"));
                s.setCapital(rs.getString("capital"));
                s.setRegion(rs.getString("region"));
                states.add(s);
            }
        }
        return states;
    }

    /**
     * Retrieve a specific state by its ID.
     * @param id State ID
     * @return State object or null if not found
     */
    public State getStateById(int id) throws ClassNotFoundException, SQLException {
        State s = null;
        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPass);
             PreparedStatement ps = conn.prepareStatement("SELECT * FROM usiel_states_data WHERE id = ?")) {

            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                s = new State();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                s.setAbbreviation(rs.getString("abbreviation"));
                s.setPopulation(rs.getInt("population"));
                s.setCapital(rs.getString("capital"));
                s.setRegion(rs.getString("region"));
            }

            rs.close();
        }

        return s;
    }

    /**
     * Update an existing state record.
     * @param state State object with updated info
     * @return true if update was successful
     */
    public boolean updateState(State state) throws ClassNotFoundException, SQLException {
        boolean success;
        Class.forName("com.mysql.cj.jdbc.Driver");

        String sql = "UPDATE usiel_states_data SET name=?, abbreviation=?, population=?, capital=?, region=? WHERE id=?";
        try (Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPass);
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, state.getName());
            ps.setString(2, state.getAbbreviation());
            ps.setInt(3, state.getPopulation());
            ps.setString(4, state.getCapital());
            ps.setString(5, state.getRegion());
            ps.setInt(6, state.getId());

            success = ps.executeUpdate() > 0;
        }

        return success;
    }

    /**
     * Insert a new state into the table.
     * @param state State object to insert
     * @return true if insert was successful
     */
    public boolean insertState(State state) throws ClassNotFoundException, SQLException {
        boolean success;
        Class.forName("com.mysql.cj.jdbc.Driver");

        String sql = "INSERT INTO usiel_states_data (name, abbreviation, population, capital, region) VALUES (?, ?, ?, ?, ?)";
        try (Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPass);
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setString(1, state.getName());
            ps.setString(2, state.getAbbreviation());
            ps.setInt(3, state.getPopulation());
            ps.setString(4, state.getCapital());
            ps.setString(5, state.getRegion());

            success = ps.executeUpdate() > 0;
        }

        return success;
    }

    /**
     * Delete a state from the database using ID.
     * @param id ID of the state to delete
     * @return true if delete was successful
     */
    public boolean deleteState(int id) throws ClassNotFoundException, SQLException {
        boolean success;
        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection conn = DriverManager.getConnection(jdbcURL, dbUser, dbPass);
             PreparedStatement ps = conn.prepareStatement("DELETE FROM usiel_states_data WHERE id=?")) {

            ps.setInt(1, id);
            success = ps.executeUpdate() > 0;
        }

        return success;
    }
}