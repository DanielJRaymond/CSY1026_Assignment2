/*
Authors: 
Daniel Raymond
Gabriel Cruceanu
Harry Carter
*/


-- EMPLOYEES
INSERT INTO employees
(employee_id, title, first_name, last_name, gender, contact_no, dob, joindate)
VALUES (seq_employees.NEXTVAL, 'MR', 'BILL', 'GOATS', 'M', '0714655814', '28-FEB-1974', '15-AUG-1997');

INSERT INTO employees
(employee_id, title, first_name, last_name, gender, contact_no, dob, joindate)
VALUES (seq_employees.NEXTVAL, 'LORD', 'GARY', 'GYGOX', 'M', '0716482195', '27-JUL-1978', '1-DEC-1990');

INSERT INTO employees
(employee_id, title, first_name, last_name, gender, contact_no, dob, joindate)
VALUES (seq_employees.NEXTVAL, 'MS', 'FREYJA', 'NEWBERRY', 'F', '0791472943', '11-OCT-1989', '4-JUN-2000');

INSERT INTO employees
(employee_id, title, first_name, last_name, gender, contact_no, dob, joindate)
VALUES (seq_employees.NEXTVAL, 'MR', 'STEWART PHILIPS', 'LOVECRAFT', 'M', '0794286173', '20-AUG-1890', '15-MAR-1937');

INSERT INTO employees
(employee_id, title, first_name, last_name, gender, contact_no, dob, joindate)
VALUES (seq_employees.NEXTVAL, 'MR', 'STEVE', 'PLACEMENT', 'M', '0786492159', '24-FEB 1955', '5-OCT-2011');

-- SPECIALISMS
INSERT INTO specialisms
(specialism_id, specialism_name, specialism_desc)
VALUES (6087, 'SECURITY', 'KEEP EMPLOYEES SAFE AND, EAT DONUTS');

INSERT INTO specialisms
(specialism_id, specialism_name, specialism_desc)
VALUES (9179, 'CODE MONKEY', 'CODES');

INSERT INTO specialisms
(specialism_id, specialism_name, specialism_desc)
VALUES (7063, 'RECEPTIONIST', 'GREET VISITORS');

INSERT INTO specialisms
(specialism_id, specialism_name, specialism_desc)
VALUES (1241, 'SERVER ENGINEER', 'MAINTAIN THE SERVERS ON THE HARDWARSE SIDE, UPDATEING OUT OF DATE OR FIXING MALFUNCTIONING PARTS');

INSERT INTO specialisms
(specialism_id, specialism_name, specialism_desc)
VALUES (6093, 'DATABASE ENGINEER', 'MAINTAIN THE DATABASES');

-- PROJECTS
INSERT INTO projects
(project_id, title, description, start_date, end_date, budget)
VALUES (seq_projects.NEXTVAL, 'DOOR REPAIR', 'FIXING MOTORS WITHIN AUTOMATIC DOOR', '6-JUL-2001', '6-JUL-2026', 1200.00);

INSERT INTO projects
(project_id, title, description, start_date, end_date, budget)
VALUES (seq_projects.NEXTVAL, 'ACTIONSCRIPT 4', 'UPDATE OLD ACTIONSCRIPT LANGUAGE', '1-OCT-2018', '30-JUN-2021', 10500.00);

INSERT INTO projects
(project_id, title, description, start_date, end_date, budget)
VALUES (seq_projects.NEXTVAL, 'INTERNET REPAIR', 'TURNING IT OFF AND ON AGAIN', '9-DEC-2013', '16-DEC-2013', 0.00);

INSERT INTO projects
(project_id, title, description, start_date, end_date, budget)
VALUES (seq_projects.NEXTVAL, 'CRAMMING LAST MINUTE', 'ATTEMPTING TO FIX HORRIBLE MISTAKES BY LEAVING WORK THIS LONG', '1-JAN-2019', '13-JAN-2019', 20.00);

INSERT INTO projects
(project_id, title, description, start_date, end_date, budget)
VALUES (seq_projects.NEXTVAL, 'STAYING ALIVE', 'LONG TERM PROJECT REQUIRING MANY RESOURCES', '26-JUL-1999', '27-JUL-2101', 5000000.00);

-- PROJECT COSTS
INSERT INTO project_costs 
(project_id, cost) 
VALUES (100, 4438.16); 

INSERT INTO project_costs 
(project_id, cost) 
VALUES (101, 2850.48); 

INSERT INTO project_costs 
(project_id, cost) 
VALUES (102, 7219.66); 

INSERT INTO project_costs 
(project_id, cost) 
VALUES (103, 7181.10); 

INSERT INTO project_costs 
(project_id, cost) 
VALUES (104, 1462.95); 

-- RESOURCES
INSERT INTO resources
(resource_id, name, description, cost)
VALUES (seq_resources.NEXTVAL, 'CAT SCRATCHERS', 'CAT SCRATCHERS FOR PURRRSONAL USE', 2064.39);

INSERT INTO resources
(resource_id, name, description, cost)
VALUES (seq_resources.NEXTVAL, 'A4 PAPER', 'GOOD QUALITY PRINTING PAPER', 7083.42);

INSERT INTO resources
(resource_id, name, description, cost)
VALUES (seq_resources.NEXTVAL, 'STAPLE GUNS', 'HIGH QUALITY STAPLE GUNS FOR THE BI-ANUAL OFFICE SHOOTOUT', 8795.69);

INSERT INTO resources
(resource_id, name, description, cost)
VALUES (seq_resources.NEXTVAL, 'STAPLES', 'AMMO FOR THE STAPLE GUNS', 5179.45);

INSERT INTO resources
(resource_id, name, description, cost)
VALUES (seq_resources.NEXTVAL, 'SPICE', 'HE WHO CONTROLS THE SPICE CONTROLS THE UNIVERSE', 9972.91);

-- PROJECT RESOURCES
INSERT INTO project_resources 
(project_id, resource_id, quantity) 
VALUES (100, 10000000, 7183); 

INSERT INTO project_resources
(project_id, resource_id, quantity)
VALUES (101, 10000001, 3009);

INSERT INTO project_resources
(project_id, resource_id, quantity)
VALUES (102, 10000002, 2482);

INSERT INTO project_resources
(project_id, resource_id, quantity)
VALUES (103, 10000003, 2389);

INSERT INTO project_resources
(project_id, resource_id, quantity)
VALUES (104, 10000004, 8183);

-- EMPLOYEES SPECIALISMS
INSERT INTO employees_specialisms
(employee_id, specialism_id, specialism_name)
VALUES (10000000, 6093, 'DATABASE ENGINEER');

INSERT INTO employees_specialisms
(employee_id, specialism_id, specialism_name)
VALUES (10000001, 7063, 'RECEPTIONIST');

INSERT INTO employees_specialisms
(employee_id, specialism_id, specialism_name)
VALUES (10000002, 6093, 'DATABASE ENGINEER');

INSERT INTO employees_specialisms
(employee_id, specialism_id, specialism_name)
VALUES (10000003, 9179, 'CODE MONKEY');

INSERT INTO employees_specialisms
(employee_id, specialism_id, specialism_name)
VALUES (10000004, 6093, 'DATABASE ENGINEER');

-- PROJECT TEAMS
INSERT INTO project_teams 
(employee_id, project_id, team_no) 
VALUES (10000000, 100, seq_teams.NEXTVAL); 

INSERT INTO project_teams
(employee_id, project_id, team_no)
VALUES (10000001, 101, seq_teams.NEXTVAL);

INSERT INTO project_teams
(employee_id, project_id, team_no)
VALUES (10000002, 102, seq_teams.NEXTVAL);

INSERT INTO project_teams
(employee_id, project_id, team_no)
VALUES (10000003, 103, seq_teams.NEXTVAL);

INSERT INTO project_teams
(employee_id, project_id, team_no)
VALUES (10000004, 104, seq_teams.NEXTVAL);

-- STAGES
INSERT INTO stages
(stage_id, stage_name, start_date, end_date)
VALUES (seq_stages.NEXTVAL, 'DEVELOPMENT', '15-JAN-2019', '29-JAN-2019');

INSERT INTO stages
(stage_id, stage_name, start_date, end_date)
VALUES (seq_stages.NEXTVAL, 'DEVELOPMENT', '3-FEB-2019', '17-FEB-2019');

INSERT INTO stages
(stage_id, stage_name, start_date, end_date)
VALUES (seq_stages.NEXTVAL, 'DESIGN', '6-JAN-2019', '23-JAN-2019');

INSERT INTO stages
(stage_id, stage_name, start_date, end_date)
VALUES (seq_stages.NEXTVAL, 'DESIGN', '6-MAR-2019', '25-MAR-2019');

INSERT INTO stages
(stage_id, stage_name, start_date, end_date)
VALUES (seq_stages.NEXTVAL, 'TESTING', '7-FEB-2019', '26-FEB-2019');

INSERT INTO stages
(stage_id, stage_name, start_date, end_date)
VALUES (seq_stages.NEXTVAL, 'TESTING', '6-JUN-2019', '28-JUN-2019');

-- PROJECT STAGES
INSERT INTO project_stages
(project_id, stage_id)
VALUES (100, 1000);

INSERT INTO project_stages
(project_id, stage_id)
VALUES (101, 1001);

INSERT INTO project_stages
(project_id, stage_id)
VALUES (102, 1002);

INSERT INTO project_stages
(project_id, stage_id)
VALUES (103, 1003);

INSERT INTO project_stages
(project_id, stage_id)
VALUES (104, 1004);

-- MEETINGS
INSERT INTO meetings 
(project_id, stage_id, team_no, meeting_id, meeting_date, meeting_location) 
VALUES (100, 1000, 1, seq_meetings.NEXTVAL, '14-FEB-2003', 'MEETING ROOM A'); 

INSERT INTO meetings
(project_id, stage_id, team_no, meeting_id, meeting_date, meeting_location)
VALUES (101, 1001, 2, seq_meetings.NEXTVAL, '27-JUL-1995', 'MEETING ROOM C');

INSERT INTO meetings
(project_id, stage_id, team_no, meeting_id, meeting_date, meeting_location)
VALUES (102, 1002, 3, seq_meetings.NEXTVAL, '9-AUG-2008', 'MEETING ROOM F');

INSERT INTO meetings
(project_id, stage_id, team_no, meeting_id, meeting_date, meeting_location)
VALUES (103, 1003, 4, seq_meetings.NEXTVAL, '22-JUL-2010', 'MEETING ROOM A');

INSERT INTO meetings
(project_id, stage_id, team_no, meeting_id, meeting_date, meeting_location)
VALUES (104, 1004, 5, seq_meetings.NEXTVAL, '17-DEC-2017', 'MEETING ROOM Z');

-- ACTIONS
INSERT INTO actions 
(meeting_id, owner_id, deadline) 
VALUES (10, 'GG', '27-OCT-2013'); 

INSERT INTO actions
(meeting_id, owner_id, deadline)
VALUES (11, 'BG', '5-NOV-1997');

INSERT INTO actions
(meeting_id, owner_id, deadline)
VALUES (12, 'SL', '10-MAR-2018');

INSERT INTO actions
(meeting_id, owner_id, deadline)
VALUES (13, 'SP', '19-JUN-2008');

INSERT INTO actions
(meeting_id, owner_id, deadline)
VALUES (14, 'FN', '4-SEP-2001');
