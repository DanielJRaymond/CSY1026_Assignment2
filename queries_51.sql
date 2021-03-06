/*
Authors: 
Daniel Raymond
Gabriel Cruceanu
Harry Carter
*/


-- EMPLOYEES

--List all daya about the employees based on their first name starting from A;
SELECT * FROM employees 
ORDER BY first_name ASC;

--List all data about the employees based on their title
SELECT * FROM employees
WHERE title IN('MR', 'LORD');

--List all data about the employees whose names do not start with the letter S
SELECT * FROM employees
WHERE first_name LIKE 'S%';

--List the employees by their last name and the specialism they have
SELECT e.last_name, es.specialism_name
FROM employees e INNER JOIN employees_specialisms es
on  e.employee_id = es.employee_id;

-- PROJECTS
SELECT title, project_id FROM projects
ORDER BY end_date;

SELECT project_id, title, description FROM projects
WHERE budget>10000
ORDER BY budget DESC;

-- RESOURCES
SELECT name, description FROM resources
WHERE cost>7500
ORDER BY cost ASC;

--PROJECT COSTS
SELECT p.name, pc.cost
FROM projects p, project_costs pc
WHERE pc.cost>3000
ORDER BY pc.cost ASC;

-- EMPLOYEE SPECIALISMS
SELECT e.first_name, e.last_name, es.specialism_name
FROM employees e, employees_specialisms es
WHERE es.specialism_name NOT LIKE 'DATABASE ENGINEER';

-- STAGES
SELECT stage_name, start_date FROM stages 
WHERE end_date NOT LIKE '%FEB%'
ORDER BY start_date ASC;

-- MEETINGS
SELECT team_no FROM meetings
WHERE meeting_location LIKE 'MEETING ROOM C';


