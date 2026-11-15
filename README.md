BUS385 HR Data Quality Project



Project Overview



For this project, we used MySQL to create an HR database with 1,470 employee records. Our main goal was to organize employee data, check for errors, and use SQL queries to answer business questions.



We also tested different ways to prevent incorrect information from being entered into the database.



Database



We created tables for employee information, employment, compensation, job roles, departments, and employee satisfaction.



We used primary keys and foreign keys to connect the tables and keep the data organized.



Data Quality Testing



We used SQL to check for problems in the database, including:



Invalid employee information



Incorrect salary values



Duplicate records



Missing or incorrect relationships between tables



Changes made to employee records



We also used constraints, triggers, and transactions to test how the database handles errors.



Our results:



Target detection rate: 95%



Total recorded tests: 13



Tests detected: 13



Detection rate: 100% for the 13 tests



Business Questions



We created 10 SQL queries to analyze employee data and answer questions about attrition, salary, overtime, and job satisfaction.



Some findings from our queries were:



Sales had the highest department attrition rate at 20.63%.



Employees working overtime had a 30.53% attrition rate.



Sales Representatives had the highest attrition rate by job role at 39.76%.



Employees with 0–2 years at the company had a 29.82% attrition rate.



Project Files



Database/ - SQL scripts used to create the database and its tables.



Data\_Quality/ - SQL scripts for checking errors, testing constraints, and tracking changes.



Business\_Questions/ - 10 SQL queries used to analyze employee data.



Tools Used



MySQL Workbench



SQL



Git and GitHub



Conclusion



This project helped us practice creating a relational database, writing SQL queries, and checking data for errors. We were able to detect all 13 recorded test errors, which met our goal of at least 95% detection on those tests.

