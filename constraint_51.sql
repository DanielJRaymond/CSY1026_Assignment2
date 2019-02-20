/*
Authors: 
Daniel Raymond
Gabriel Cruceanu
Harry Carter
*/

--NOT NULL



--DEFAULT

ALTER TABLE stages
ADD CONSTRAINTS DF_stages
DEFAULT SYSDATE
FOR start_date;

ALTER TABLE stages
ADD CONSTRAINTS DF_stages
DEFAULT SYSDATE
FOR end_date;


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
PRIMARY KEY actions();
--FOREIGN KEYS




