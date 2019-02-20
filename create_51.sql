/*
Authors: 
Daniel Raymond
Gabriel Cruceanu
Harry Carter
*/



CREATE TABLE stages (
task_id		NUMBER(4),	
start_date	DATE,
end_date	DATE
);









CREATE TABLE project_stages (
project_id			NUMBER(4),
task_id				NUMBER(4)
);




CREATE TABLE meetings (
project_id			NUMBER(4),
task_id				NUMBER(4),
meeting_id			NUMBER(4),
meeting_date		DATE,
meeting_location	VARCHAR2(30)
);








CREATE TABlE actions (
meeting_id			NUMBER(4),
owner				VARCHAR2(25),
deadline			DATE
);