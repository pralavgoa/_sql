INSERT INTO DASH_ONTOLOGY SELECT C_HLEVEL, C_FULLNAME, C_NAME, DASH_ONT_SEQ.nextval FROM UCLA_LABS;

SELECT C_HLEVEL,C_FULLNAME,C_NAME,ID FROM DASH_ONTOLOGY WHERE C_HLEVEL=1
--create sequence dash_ont_seq start with 1 increment by 1 nomaxvalue; 
--
--UPDATE DASH_ONTOLOGY
--   SET id = dash_ont_seq.nextval;