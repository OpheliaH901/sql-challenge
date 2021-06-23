# sql-challenge
SQL Challenge (Homework)

It is a beautiful spring day, and it is two weeks since you have been hired as a new data engineer at Pewlett Hackard. Your first major task is a research project on employees of the corporation from the 1980s and 1990s. All that remain of the database of employees from that period are six CSV files.

Data Modeling

By inspecting the 6 .csv files, I was able to create an entity relationship diagram that shows a visual of each entity and the info of each employee, salary, title, and department info and how they all tie together. There isn't one table with all the information to perform an analysis, so developing an ERD helps the flow of our findings

Data Engineering

Once the ERD is created, a script was created to develop each table which is based on the .csv files (found in the EmployeeSQL folder). Using PgAdmin4, i created a Pewlett Hackard database and imported all .csv files, so that the info could be pulled into our tables.

Data Analysis
By joining tables and pinpointing columns, Queries were created from the table schematas to find the following info on the employees:

    List the following details of each employee: employee number, last name, first name, sex, and salary.


    List first name, last name, and hire date for employees who were hired in 1986.


    List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.


    List the department of each employee with the following information: employee number, last name, first name, and department name.


    List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


    List all employees in the Sales department, including their employee number, last name, first name, and department name.


    List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


    In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.