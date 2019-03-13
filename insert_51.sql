/*
Authors: 
Daniel Raymond
Gabriel Cruceanu
Harry Carter
*/




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
