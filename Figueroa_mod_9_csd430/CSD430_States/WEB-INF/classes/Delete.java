/**
 * Author: Usiel Figueroa
 * Date: June 23, 2025
 * Assignment: CSD 430-A311 Server-Side Development
 * Purpose: Drop the 'usiel_states' table to reset the database
 */

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

public class Delete {
    public static void main(String[] args) {
        try {
            // Connect to MySQL database
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/CSD430", "student1", "pass");
            Statement stmt = conn.createStatement();

            // Drop table SQL
            String sql = "DROP TABLE IF EXISTS usiel_states";
            stmt.executeUpdate(sql); // execute the correct drop statement

            System.out.println("Table 'usiel_states_data' deleted successfully.");

            stmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

