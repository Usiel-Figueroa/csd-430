=======================================================================
CSD 430-A311 Server-Side Development  
Project Title: U.S. States Database CRUD Web App  
Author: Usiel Figueroa  
Professor: Darrell Payne 
July 09, 2025  
=======================================================================

PROJECT PURPOSE
---------------
This project demonstrates the full CRUD (Create, Read, Update, Delete) cycle using JSP pages, JavaBeans, and a MySQL database. The application allows users to manage records of U.S. states through a dynamic web interface. The primary goal is to apply professional best practices by separating concerns using a JavaBean (State.java) and DAO class (StateDAO.java) for all database access. This design improves maintainability, reusability, and modularity — mimicking corporate-grade server-side architecture.

PROJECT FEATURES
----------------
✔ Add new state records to the database  
✔ View individual state data by ID  
✔ View all states in a table with header labels  
✔ Update an existing state's information  
✔ Delete a state by selecting from a dropdown  
✔ Automatically refreshes tables after updates and deletes  
✔ Uses consistent styling (navy/white theme)  
✔ Error messages and validations included  
✔ Fully documented JavaBeans, JSPs, and CSS

FOLDER STRUCTURE
----------------
Project/
 index.jsp                 - Main dashboard with navigation
 addState.jsp              - Form to add a new U.S. state
 displayState.jsp          - Display select U.S. State
 insertState.jsp           - Processes the add form and inserts data
 selectState.jsp           - Select and view a state by ID
 viewAll.jsp               - View all states in a styled table
 selectUpdate.jsp          - Dropdown to choose a state to update
 updateStateForm.jsp       - Form to update fields (ID non-editable)
 updateStateAction.jsp     - Process updated data and displays result
 deleteState.jsp           - Form to select and delete a state
 processDelete.jsp         - Processes deletion and refreshes the table

 style.css                 - CSS stylesheet (navy/white theme)

 beans/
           State.java    - JavaBean model for state data
           StateDAO.java - JavaBean DAO for database operations

DATABASE DETAILS
----------------
Database Name: CSD430  
Table Name: usiel_states_data  
Minimum Fields:
 - id (Primary Key, int)
 - name (VARCHAR)
 - abbreviation (VARCHAR)
 - population (INT)
 - capital (VARCHAR)
 - region (VARCHAR)

SETUP INSTRUCTIONS
------------------
1. Import the MySQL database using the provided `usiel_states_data.sql` script.
2. Configure your JDBC driver in Eclipse or Tomcat setup.
3. Ensure MySQL is running on localhost.
4. Set database credentials in StateDAO.java:
   - user: student1
   - password: xxxx
5. Deploy the project to Tomcat and access via local host.

NOTES
-----
- All database access is managed via JavaBeans per professor instructions.
- HTML tags are kept separate from scriptlets.
- Code is fully commented and documented.
- Designed using HTML5/CSS3 best practices.

REFERENCES
----------
[Design and Development - Video Production]. (2024, November 7). CRUD Delete [Video]. Bellevue University.  
Sharif, A. (2022, December 20). What is CRUD? Crowdstrike.  
Codejava. (2019). Java JDBC CRUD Tutorial. https://www.codejava.net/  
W3Schools. MySQL Tutorial. https://www.w3schools.com/MySQL/default.asp  
Infoplease. (2023). U.S. State Information. https://www.infoplease.com/us/states

=======================================================================