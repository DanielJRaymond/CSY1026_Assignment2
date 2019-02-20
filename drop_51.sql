/*
Authors: 
Daniel Raymond
Gabriel Cruceanu
Harry Carter
*/

--FOREIGN

ALTER TABLE project_stages
DROP CONSTRAINT fk_ps_stages;

ALTER TABLE meetings
DROP CONSTRAINT fk_m_stages;


--PRIMARY

ALTER TABLE stages
DROP CONSTRAINT pk_stages;

ALTER TABLE project_stages
DROP CONSTRAINT pk_project_stages;

ALTER TABLE meetings
DROP CONSTRAINT pk_meetings;

ALTER TABLE actions
DROP CONSTRAINT pk_actions;


--TABLE

DROP TABLE empolyees;
DROP TABLE specialisms;
DROP TABLE employees_specialisms;
DROP TABLE projects_teams;
DROP TABLE stages;
DROP TABLE project_stages;
DROP TABLE meetings;
DROP TABLE actions;

--SEQUENCE




PURGE RECYCLEBIN;