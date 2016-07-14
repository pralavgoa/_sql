SELECT second.ID,second.OBSERVATION_YEAR,second.OBSERVATION_COUNT FROM
DASH_TAB_1_A first
JOIN DASH_TAB_1_B second
ON ONTOLOGY_ID=second.ID;

SELECT first.ONTOLOGY_ID,first.PARENT_ID,first.C_NAME FROM
DASH_TAB_1_A first
JOIN DASH_TAB_1_B second
ON ONTOLOGY_ID=second.ID;

SELECT * FROM DASH_TAB_1_A WHERE ONTOLOGY_ID IN (
SELECT PARENT_ID FROM
DASH_TAB_1_A first
JOIN DASH_TAB_1_B second
ON ONTOLOGY_ID=second.ID
GROUP BY PARENT_ID);