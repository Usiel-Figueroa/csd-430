/**
 * Author: Usiel Figueroa
 * Date: June 23, 2025
 * Assignment: CSD 430-A311 Server-Side Development
 * Purpose: Populate the 'data' table with initial U.S. state records
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class Populate {
    public static void main(String[] args) {
        try {
            // Connect to MySQL database
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/CSD430", "student1", "pass");

            // Insert initial records
            String sql = "INSERT INTO usiel_states_data (name, abbreviation, population, capital, region) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setString(1, "Washington");
            ps.setString(2, "WA");
            ps.setInt(3, 7693612);
            ps.setString(4, "Olympia");
            ps.setString(5, "West");
            ps.executeUpdate();

            ps.setString(1, "California");
            ps.setString(2, "CA");
            ps.setInt(3, 39538223);
            ps.setString(4, "Sacramento");
            ps.setString(5, "West");
            ps.executeUpdate();

            ps.setString(1, "Texas");
            ps.setString(2, "TX");
            ps.setInt(3, 29145505);
            ps.setString(4, "Austin");
            ps.setString(5, "South");
            ps.executeUpdate();

            System.out.println("Initial state data inserted successfully.");

            ps.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
