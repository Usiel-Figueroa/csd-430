/**
 * Author: Usiel Figueroa
 * Date: June 23, 2025
 * Assignment: CSD 430-A311 Server-Side Development
 * Purpose: Create the 'usiel_states' table for storing U.S. state records
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Create {
    public static void main(String[] args) {
        try {
            // Connect to MySQL database
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/CSD430", "student1", "pass");
            Statement stmt = conn.createStatement();

            // Create table SQL
            String sql = "CREATE TABLE usiel_states (" +
                         "id INT NOT NULL AUTO_INCREMENT," +
                         "name VARCHAR(50) UNIQUE," +
                         "abbreviation CHAR(2)," +
                         "population INT," +
                         "capital VARCHAR(50)," +
                         "region VARCHAR(50)," +
                         "PRIMARY KEY (id))";

            stmt.executeUpdate(sql); // run the CREATE TABLE command

            System.out.println("Table 'usiel_states_data' created successfully.");

            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
