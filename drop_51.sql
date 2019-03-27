/*
Authors: 
Daniel Raymond
Gabriel Cruceanu
Harry Carter
*/

--FOREIGN

ALTER TABLE employees_specialisms
DROP CONSTRAINT fk_es_employees;

ALTER TABLE employees_specialism
DROP CONSTRAINT fk_es_specialisms;

ALTER TABLE project_teams
DROP CONSTRAINT fk_pt_employee;

ALTER TABLE project_teams
DROP CONSTRAINT fk_pt_projects;

ALTER TABLE project_stages
DROP CONSTRAINT fk_ps_stages;

ALTER TABLE meetings
DROP CONSTRAINT fk_m_stages;

ALTER TABLE actions
DROP CONSTRAINT fk_a_meetings;

ALTER TABLE project_resources
DROP CONSTRAINT fk_pr_projects;

ALTER TABLE project_resources
DROP CONSTRAINT fk_pr_resources;

ALTER TABLE project_costs
DROP CONSTRAINT fk_pc_projects;

--PRIMARY

ALTER TABLE employees
DROP CONSTRAINT pk_employees;

ALTER TABLE specialisms
DROP CONSTRAINT pk_specialisms;

ALTER TABLE stages
DROP CONSTRAINT pk_stages;

ALTER TABLE project_stages
DROP CONSTRAINT pk_project_stages;

ALTER TABLE meetings
DROP CONSTRAINT pk_meetings;

ALTER TABLE actions
DROP CONSTRAINT pk_actions;

ALTER TABLE projects
DROP CONSTRAINT pk_projects;

ALTER TABLE resources
DROP CONSTRAINT pk_resources;

ALTER TABLE project_costs
DROP CONSTRAINT pk_project_costs;

ALTER TABLE project_resources
DROP CONSTRAINT pk_project_resources;

--TABLES

DROP TABLE empolyees;
DROP TABLE specialisms;
DROP TABLE employees_specialisms;
DROP TABLE projects;
DROP TABLE resources;
DROP TABLE project_resources;
DROP TABLE project_costs;
DROP TABLE project_teams;
DROP TABLE stages;
DROP TABLE project_stages;
DROP TABLE meetings;
DROP TABLE actions;

--SEQUENCES

DROP SEQUENCE seq_meetings;
DROP SEQUENCE seq_employees;
DROP SEQUENCE seq_specialisms;
DROP SEQUENCE seq_teams;
DROP SEQUENCE seq_stages;
DROP SEQUENCE seq_projects;
DROP SEQUENCE seq_resources;

PURGE RECYCLEBIN;
