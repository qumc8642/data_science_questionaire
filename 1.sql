CREATE TABLE name_table (StudentID VARCHAR(5), Name VARCHAR(10));

CREATE TABLE mark_table (StudentID VARCHAR(5), Mark INT(3));


INSERT INTO name_table (StudentID, Name) VALUES ('V001', 'Abe');
INSERT INTO name_table (StudentID, Name) VALUES ('V002', 'Abay');
INSERT INTO name_table (StudentID, Name) VALUES ('V003', 'Acelin');
INSERT INTO name_table (StudentID, Name) VALUES ('V004', 'Adelphos');

INSERT INTO mark_table (StudentID, Mark) VALUES ('V001', 95);
INSERT INTO mark_table (StudentID, Mark) VALUES ('V002', 80);
INSERT INTO mark_table (StudentID, Mark) VALUES ('V003', 74);
INSERT INTO mark_table (StudentID, Mark) VALUES ('V004', 81);

select name_table.StudentID, name_table.Name
from name_table
INNER JOIN mark_table on mark_table.StudentID=name_table.StudentID
WHERE mark_table.Mark > (select (Mark) from mark_table where StudentID = 'V002');