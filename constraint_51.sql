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
PRIMARY KEY (meeting_id, owner, deadline);


--FOREIGN KEYS




