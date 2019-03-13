/*
Authors: 
Daniel Raymond
Gabriel Cruceanu
Harry Carter
*/

CREATE TABLE empolyees (
employee_id NUMBER(8),
title VARCHAR2(10),
first_name VARCHAR2(15),
last_name VARCHAR2(20),
gender CHAR(1) DEFAULT 'M',
contact_no CHAR(10) NOT NULL,
dob DATE NOT NULL,
joindate DATE NOT NULL DEFAULT SYSDATE
  );

CREATE TABLE specialisms (
specialism_id NUMBER(4),
specialism_name VARCHAR2(20),
specialism_desc VARCHAR2(40)
  );

CREATE TABLE employees_specialisms (
employee_id NUMBER(8),
specialism_id NUMBER (4), 
specialism_name VARCHAR2(20)
  );

CREATE TABLE projects_teams (
employee_id NUMBER(8),
project_id NUMBER(8),
team_no NUMBER(4) NOT NULL
  );



CREATE TABLE stages (
stage_name	VARCHAR2(20),
start_date	DATE NOT NULL DEFAULT SYSDATE,
end_date	DATE NOT NULL DEFAULT SYSDATE
);









CREATE TABLE project_stages (
project_id			 NUMBER(8),
stage_name			 VARCHAR2(20),
);




CREATE TABLE meetings (
project_id			  NUMBER(8),
stage_name			  VARCHAR2(20),
team_no				    NUMBER(4),
meeting_id			  NUMBER(4),
meeting_date		  DATE NOT NULL DEFAULT SYSDATE,
meeting_location	VARCHAR2(30) NOT NULL
);








CREATE TABlE actions (
meeting_id			NUMBER(4),
owner				VARCHAR2(25),
deadline			DATE NOT NULL DEFAULT SYSDATE
);

--SEQUENCE

CREATE SEQUENCE seq_employees
INCREMENT BY 1
START WITH 10000000
MAXVALUE 99999999;

CREATE SEQUENCE seq_teams
INCREMENT BY 1
START WITH 1;

CREATE SEQUENCE seq_meetings
INCREMENT BY 1
START WITH 1;
