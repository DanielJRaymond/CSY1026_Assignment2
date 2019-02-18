/*
Authors: 
Daniel Raymond
Gabriel Cruceanu
Harry Carter
*/




--PRIMARY KEYS

ALTER TABLE stages
ADD CONSTRAINTS pk_stages
PRIMARY KEY stages(task_id);




ALTER TABLE project_stages
ADD CONSTRAINTS pk_project_stages
PRIMARY KEY project_stages(project_id, task_id);


ALTER TABLE meetings
ADD CONSTRAINTS pk_meetings
PRIMARY KEY meetings(meeting_id);


ALTER TABLE actions
ADD CONSTRAINTS pk_actions
PRIMARY KEY actions();
--FOREIGN KEYS


