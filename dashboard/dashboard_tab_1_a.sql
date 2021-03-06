--8 rows inserted
INSERT INTO DASH_TAB_1_A 
SELECT ID ontology_id,0,C_NAME FROM DASH_ONTOLOGY 
WHERE C_HLEVEL=1;

--44rows
INSERT INTO DASH_TAB_1_A 
SELECT second.ID ontology_id,first.ID parent_id,second.C_NAME FROM
(SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=1)  first
JOIN
(SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=2)   second
ON second.C_FULLNAME LIKE ('%' || first.C_FULLNAME || '%') ;

--584 rows
INSERT INTO DASH_TAB_1_A 
SELECT second.ID ontology_id,first.ID parent_id,second.C_NAME FROM
(SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=2)  first
JOIN
(SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=3)   second
ON second.C_FULLNAME LIKE ('%' || first.C_FULLNAME || '%') ;

--2600 rows
INSERT INTO DASH_TAB_1_A 
SELECT second.ID ontology_id,first.ID parent_id,second.C_NAME FROM
(SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=3)  first
JOIN
(SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=4)   second
ON second.C_FULLNAME LIKE ('%' || first.C_FULLNAME || '%') ;

--6305 rows
INSERT INTO DASH_TAB_1_A 
SELECT second.ID ontology_id,first.ID parent_id,second.C_NAME FROM
(SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=4)  first
JOIN
(SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=5)   second
ON second.C_FULLNAME LIKE ('%' || first.C_FULLNAME || '%') ;

--34800 rows
INSERT INTO DASH_TAB_1_A 
SELECT second.ID ontology_id,first.ID parent_id,second.C_NAME FROM
(SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=5)  first
JOIN
(SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=6)   second
ON second.C_FULLNAME LIKE ('%' || first.C_FULLNAME || '%') ;

--81182 rows
INSERT INTO DASH_TAB_1_A 
SELECT second.ID ontology_id,first.ID parent_id,second.C_NAME FROM
(SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=6)  first
JOIN
(SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=7)   second
ON second.C_FULLNAME LIKE ('%' || first.C_FULLNAME || '%') ;

--97166 rows
INSERT INTO DASH_TAB_1_A 
SELECT second.ID ontology_id,first.ID parent_id,second.C_NAME FROM
(SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=7)  first
JOIN
(SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=8)   second
ON second.C_FULLNAME LIKE ('%' || first.C_FULLNAME || '%') ;

--111789 rows
INSERT INTO DASH_TAB_1_A 
SELECT second.ID ontology_id,first.ID parent_id,second.C_NAME FROM
(SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=8)  first
JOIN
(SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=9)   second
ON second.C_FULLNAME LIKE ('%' || first.C_FULLNAME || '%') ;

--70 rows
INSERT INTO DASH_TAB_1_A 
SELECT second.ID ontology_id,first.ID parent_id,second.C_NAME FROM
(SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=9)  first
JOIN
(SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=10)   second
ON second.C_FULLNAME LIKE ('%' || first.C_FULLNAME || '%') ;