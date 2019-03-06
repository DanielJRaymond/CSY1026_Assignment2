/*
Authors: 
Daniel Raymond
Gabriel Cruceanu
Harry Carter
*/

--NOT NULL

ALTER TABLE stages MODIFY (
start_date DATE NOT NULL
);

ALTER TABLE stages MODIFY (
end_date DATE NOT NULL
);

ALTER TABLE meetings MODIFY (
meeting_date DATE NOT NULL
);

ALTER TABLE meetings MODIFY (
meeting_location VARCHAR(30) NOT NULL
);


--DEFAULT



--PRIMARY KEYS

ALTER TABLE stages
ADD CONSTRAINT pk_stages
PRIMARY KEY (stage_name);


ALTER TABLE project_stages
ADD CONSTRAINT pk_project_stages
PRIMARY KEY (project_id, stage_name);


ALTER TABLE meetings
ADD CONSTRAINT pk_meetings
PRIMARY KEY (meeting_id);


ALTER TABLE actions
ADD CONSTRAINT pk_actions
PRIMARY KEY (owner);


--FOREIGN KEYS

ALTER TABLE employees_specialisms
ADD CONSTRAINT fk_es_employees
FOREIGN KEY (employee_id)
REFERENCES employees(employee_id);

ALTER TABLE employees_specialism
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
FOREIGN KEY (stage_name)
REFERENCES stages(stage_name);

--ALTER TABLE meetings
--ADD CONSTRAINT fk_m_projects
--FOREIGN KEY (project_id)
--REFERENCES projects(project_id);

ALTER TABLE meetings
ADD CONSTRAINT fk_m_stages
FOREIGN KEY (stage_name)
REFERENCES stages(stage_name);

ALTER TABLE actions
ADD CONSTRAINT fk_a_meetings
FOREIGN KEY (meeting_id)
REFERENCES meetings(meeting_id);


