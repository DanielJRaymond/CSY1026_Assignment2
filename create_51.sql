/*
Authors: 
Daniel Raymond
Gabriel
Harry


*/




CREATE TABLE stages (
task_id		NUMBER(4),	
start_date	DATE NOT NULL,
end_date	DATE NOT NULL,
);









CREATE TABLE project_stages (
project_id			NUMBER(4),
task_id				NUMBER(4)
);




CREATE TABLE meetings (
meeting_id			NUMBER(4),
meeting_date		DATE,
meeting_location	VARCHAR2(30) NOT NULL
);








CREATE TABlE actions (
meeting_id			NUMBER(4),
owner				VARChAR2(25),
deadline			DATE
);