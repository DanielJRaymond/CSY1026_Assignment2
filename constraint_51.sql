/*
Authors: 
Daniel Raymond
Gabriel Cruceanu
Harry Carter
*/

--PRIMARY KEYS

ALTER TABLE employees
ADD CONSTRAINT pk_employees
PRIMARY KEY (employee_id);

ALTER TABLE specialisms
ADD CONSTRAINT pk_specialisms
PRIMARY KEY (specialism_id);

ALTER TABLE employee_specialisms
ADD CONSTRAINT pk_employee_specialisms
PRIMARY KEY (employee_id, specialism_id);

ALTER TABLE stages
ADD CONSTRAINT pk_stages
PRIMARY KEY (stage_id);

ALTER TABLE project_stages
ADD CONSTRAINT pk_project_stages
PRIMARY KEY (project_id, stage_id);

ALTER TABLE meetings
ADD CONSTRAINT pk_meetings
PRIMARY KEY (meeting_id);

ALTER TABLE actions
ADD CONSTRAINT pk_actions
PRIMARY KEY (owner);

ALTER TABLE projects
ADD CONSTRAINT pk_projects
PRIMARY KEY (project_id);

ALTER TABLE resources
ADD CONSTRAINT pk_resources
PRIMARY KEY (resource_id);

ALTER TABLE project_resources
ADD CONSTRAINT pk_project_resources
PRIMARY KEY (project_id, resource_id);

ALTER TABLE project_costs
ADD CONSTRAINT pk_project_costs
PRIMARY KEY (project_id, cost);

ALTER TABLE project_teams
ADD CONSTRAINT pk_project_teams
PRIMARY KEY (team_no);

--FOREIGN KEYS

ALTER TABLE employees_specialisms
ADD CONSTRAINT fk_es_employees
FOREIGN KEY (employee_id)
REFERENCES employees(employee_id);

ALTER TABLE employees_specialisms
ADD CONSTRAINT fk_es_specialisms
FOREIGN KEY (specialism_id)
REFERENCES specialisms(specialism_id);

ALTER TABLE project_teams
ADD CONSTRAINT fk_pt_employee
FOREIGN KEY (employee_id)
REFERENCES employees(employee_id);

ALTER TABLE project_teams
ADD CONSTRAINT fk_pt_projects
FOREIGN KEY (project_id)
REFERENCES projects(project_id);

ALTER TABLE project_stages
ADD CONSTRAINT fk_ps_stages
FOREIGN KEY (stage_id)
REFERENCES stages(stage_id);

ALTER TABLE meetings
ADD CONSTRAINT fk_m_project_stages
FOREIGN KEY (project_id, stage_id)
REFERENCES project_stages(project_id, stage_id);

ALTER TABLE meetings
ADD CONSTRAINT fk_m_project_teams
FOREIGN KEY (team_no)
REFERENCES project_teams(team_no);

ALTER TABLE actions
ADD CONSTRAINT fk_a_meetings
FOREIGN KEY (meeting_id)
REFERENCES meetings(meeting_id);

ALTER TABLE project_costs
ADD CONSTRAINT fk_pc_projects
FOREIGN KEY (project_id)
REFERENCES projects(project_id);

ALTER TABLE project_resources
ADD CONSTRAINT fk_pr_projects
FOREIGN KEY (project_id)
REFERENCES projects(project_id);

ALTER TABLE project_resources
ADD CONSTRAINT fk_pr_resources
FOREIGN KEY (resource_id)
REFERENCES resources(resource_id);
