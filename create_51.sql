/*
Authors: 
Daniel Raymond
Gabriel Cruceanu
Harry Carter
*/

CREATE TABLE empolyees (
employee_id NUMBER(8);
first_name VARCHAR2(15);
surname VARCHAR2(20);
gender CHAR(1);
contact_no CHAR(10);
dob DATE;
joindate DATE;)

CREATE TABLE specialisms (
specialism_id NUMBER(4);
specialism_name VARCHAR2(20);
specialism_desc VARCHAR2(40);)

CREATE TABLE employees_specialisms (
employee_id NUMBER(8); --FK
specialism_id NUMBER (4); --FK
specialism_name VARCHAR2(20);)

CREATE TABLE projects_teams (
employee_id NUMBER(8);
project_id NUMBER(8);
team_no NUMBER(4);)



CREATE TABLE stages (
task_id		NUMBER(4),	
start_date	DATE,
end_date	DATE
);









CREATE TABLE project_stages (
project_id			NUMBER(8),
task_id				NUMBER(4)
);




CREATE TABLE meetings (
project_id			NUMBER(8),
task_id				NUMBER(4),
team_no				NUMBER(4),
meeting_id			NUMBER(4),
meeting_date		DATE,
meeting_location	VARCHAR2(30)
);








CREATE TABlE actions (
meeting_id			NUMBER(4),
owner				VARCHAR2(25),
deadline			DATE
);

--SEQUENCE

CREATE SEQUENCE seq_stages
INCREMENT BY 1
START WITH 1;


