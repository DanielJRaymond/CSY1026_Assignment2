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
ADD CONSTRAINTS pk_stages
PRIMARY KEY stages(stage_name);


ALTER TABLE project_stages
ADD CONSTRAINTS pk_project_stages
PRIMARY KEY project_stages(project_id, task_id);


ALTER TABLE meetings
ADD CONSTRAINTS pk_meetings
PRIMARY KEY meetings(meeting_id);


ALTER TABLE actions
ADD CONSTRAINTS pk_actions
PRIMARY KEY actions(meeting_id, owner, deadline);


--FOREIGN KEYS




