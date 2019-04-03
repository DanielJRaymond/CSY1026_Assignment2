/*
Authors: 
Daniel Raymond
Gabriel Cruceanu
Harry Carter
*/

CREATE TABLE employees (
employee_id NUMBER(8),
title 		VARCHAR2(3) CHECK IN (MRS, MISS, MR, DR),
first_name 	VARCHAR2(15),
last_name 	VARCHAR2(20),
gender 		CHAR(1) DEFAULT 'M',
contact_no 	CHAR(10) NOT NULL,
dob 		DATE NOT NULL,
joindate 	DATE DEFAULT SYSDATE
  );

CREATE TABLE specialisms (
specialism_id 	NUMBER(4),
specialism_name VARCHAR2(20),
specialism_desc VARCHAR2(40)
  );
  
CREATE TABLE projects (
project_id NUMBER(8),
title VARCHAR2(25),
description VARCHAR2(100),
start_date DATE,
end_date DATE,
budget NUMBER(8,2)
);
              
CREATE TABLE resources (
resource_id NUMBER(8),
name VARCHAR2(25),
description VARCHAR2(100),
cost NUMBER(8,2)
);
                   
CREATE TABLE project_costs (
project_id NUMBER(8),
cost NUMBER(8,2)
);
                       
CREATE TABLE project_resources (
project_id NUMBER(8),
resource_id NUMBER(8),
quantity NUMBER(4) NOT NULL
);
              
CREATE TABLE employees_specialisms (
employee_id 	NUMBER(8),
specialism_id 	NUMBER (4), 
specialism_name VARCHAR2(20)
  );
              
CREATE TABLE project_teams (
employee_id NUMBER(8),
project_id 	NUMBER(8),
team_no 	NUMBER(4) NOT NULL
  );

CREATE TABLE stages (
stage_id   	NUMBER(4),
stage_name	VARCHAR2(20),
start_date	DATE DEFAULT SYSDATE,
end_date	DATE DEFAULT SYSDATE
);

CREATE TABLE project_stages (
project_id	NUMBER(8),
stage_id	NUMBER(4)
);

CREATE TABLE meetings (
project_id			NUMBER(8),
stage_id			NUMBER(4),
team_no				NUMBER(4),
meeting_id			NUMBER(4),
meeting_date		DATE DEFAULT SYSDATE,
meeting_location	VARCHAR2(30) NOT NULL
 );

CREATE TABlE actions (
meeting_id	NUMBER(4),
owner		VARCHAR2(25),
deadline	DATE DEFAULT SYSDATE
 );

--SEQUENCE

CREATE SEQUENCE seq_employees
INCREMENT BY 1
START WITH 10000000
MAXVALUE 99999999;

CREATE SEQUENCE seq_teams
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE seq_stages
INCREMENT BY 1
START WITH 1000;

CREATE SEQUENCE seq_meetings
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE seq_projects
INCREMENT BY 1
START WITH 10000000
MAXVALUE 99999999;

CREATE SEQUENCE seq_resources
INCREMENT BY 1
START WITH 10000000
MAXVALUE 99999999;
