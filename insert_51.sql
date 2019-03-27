/*
Authors: 
Daniel Raymond
Gabriel Cruceanu
Harry Carter
*/


-- EMPLOYEES
INSERT INTO employees
(employee_id, title, first_name, last_name, gender, contact_no, dob, joindate)
VALUES (seq_employees.NEXTVAL, 'MR', 'BILL', 'GOATS', 'M', '0714655814', '29-FEB-1974', '15-AUG-1997');

INSERT INTO employees
(employee_id, title, first_name, last_name, gender, contact_no, dob, joindate)
VALUES (seq_employees.NEXTVAL, 'LORD', 'GARY', 'GYGOX', 'M', '0716482195', '27-JUL-1978', '1-DEC-1990');

INSERT INTO employees
(employee_id, title, first_name, last_name, gender, contact_no, dob, joindate)
VALUES (seq_employees.NEXTVAL, 'MS', 'FREYJA', 'NEWBERRY', 'F', '0791472943', '11-OCT-1989', '4-JUN-2000');

INSERT INTO employees
(employee_id, title, first_name, last_name, gender, contact_no, dob, joindate)
VALUES (seq_employees.NEXTVAL, 'MR', 'STEWART PHILLIPS', 'LOVECRAFT', 'M', '0794286173', '20-AUG-1890', '15-MAR-1937');

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
VALUES (seq_projects.NEXTVAL, 'INTERNET REPAIR', 'TURNING IT OFF AND ON AGAIN', '9-DEC-2013', '16-DEC-2013' 0.00);

INSERT INTO projects
(project_id, title, description, start_date, end_date, budget)
VALUES (seq_projects.NEXTVAL, 'CRAMMING LAST MINUTE', 'ATTEMPTING TO FIX HORRIBLE MISTAKES BY LEAVING WORK THIS LONG', '1-JAN-2019', '13-JAN-2019', 20.00);

INSERT INTO projects
(project_id, title, description, start_date, end_date, budget)
VALUES (seq_projects.NEXTVAL, 'STAYING ALIVE', 'LONG TERM PROJECT REQUIRING MANY RESOURCES', '26-JUL-1999', '27-JUL-2101', 5000000.00);

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

-- PROJECT COSTS
INSERT INTO project_costs
(project_id, cost)
VALUES (, .);

INSERT INTO project_costs
(project_id, cost)
VALUES (, .);

INSERT INTO project_costs
(project_id, cost)
VALUES (, .);

INSERT INTO project_costs
(project_id, cost)
VALUES (, .);

INSERT INTO project_costs
(project_id, cost)
VALUES (, .);

-- PROJECT RESOURCES
INSERT INTO project_resources
(project_id, resource_id, quantity)
VALUES (, , );

INSERT INTO project_resources
(project_id, resource_id, quantity)
VALUES (, , );

INSERT INTO project_resources
(project_id, resource_id, quantity)
VALUES (, , );

INSERT INTO project_resources
(project_id, resource_id, quantity)
VALUES (, , );

INSERT INTO project_resources
(project_id, resource_id, quantity)
VALUES (, , );

-- MEETINGS
INSERT INTO meetings
()
VALUES ();

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
