CREATE TABLE "UCLAMETADATA"."DASH_UCI" 
   (	"C_DIMCODE" VARCHAR2(700 BYTE), 
	"OBSERVATION_YEAR" NUMBER, 
	"PATIENT_COUNT" NUMBER
   );
   
CREATE TABLE "UCLAMETADATA"."DASH_UCSD" 
   (	"C_DIMCODE" VARCHAR2(700 BYTE), 
	"OBSERVATION_YEAR" NUMBER, 
	"PATIENT_COUNT" NUMBER
   );
   
CREATE TABLE "UCLAMETADATA"."DASH_UCD" 
   (	"C_DIMCODE" VARCHAR2(700 BYTE), 
	"OBSERVATION_YEAR" NUMBER, 
	"PATIENT_COUNT" NUMBER
   );
   
CREATE TABLE "UCLAMETADATA"."DASH_UCSF" 
   (	"C_DIMCODE" VARCHAR2(700 BYTE), 
	"OBSERVATION_YEAR" NUMBER, 
	"PATIENT_COUNT" NUMBER
   );
   
CREATE TABLE "UCLAMETADATA"."DASH_CEDARS" 
   (	"C_DIMCODE" VARCHAR2(700 BYTE), 
	"OBSERVATION_YEAR" NUMBER, 
	"PATIENT_COUNT" NUMBER
   );

-----------------------------------------
CREATE TABLE DASH_ALL_SITES as
SELECT C_DIMCODE, OBSERVATION_YEAR, 0 as ucla_count, 0 as uci_count, 0 as ucsd_count
FROM FACT_COUNTS_DIMCODE
UNION
SELECT C_DIMCODE, OBSERVATION_YEAR, 0 as ucla_count, 0 as uci_count, 0 as ucsd_count
FROM DASH_UCSD
UNION
SELECT C_DIMCODE, OBSERVATION_YEAR, 0 as ucla_count, 0 as uci_count, 0 as ucsd_count
FROM DASH_UCI;

MERGE INTO DASH_ALL_SITES B
USING
(
  SELECT C_DIMCODE,
         OBSERVATION_YEAR,
         PATIENT_COUNT as counter
  FROM FACT_COUNTS_DIMCODE
) ta ON (ta.C_DIMCODE = b.C_DIMCODE and ta.OBSERVATION_YEAR = b.OBSERVATION_YEAR)
WHEN MATCHED THEN UPDATE
    SET b.ucla_count = ta.counter;


MERGE INTO DASH_ALL_SITES B
USING
(
  SELECT C_DIMCODE,
         OBSERVATION_YEAR,
         PATIENT_COUNT as counter
  FROM DASH_UCI
) ta ON (ta.C_DIMCODE = b.C_DIMCODE and ta.OBSERVATION_YEAR = b.OBSERVATION_YEAR)
WHEN MATCHED THEN UPDATE
    SET b.uci_count = ta.counter;

MERGE INTO DASH_ALL_SITES B
USING
(
  SELECT C_DIMCODE,
         OBSERVATION_YEAR,
         PATIENT_COUNT as counter
  FROM DASH_UCSD
) ta ON (ta.C_DIMCODE = b.C_DIMCODE and ta.OBSERVATION_YEAR = b.OBSERVATION_YEAR)
WHEN MATCHED THEN UPDATE
    SET b.ucsd_count = ta.counter;

----------------------------------------------
MERGE INTO DASH_ALL_SITES B
USING
(
  SELECT C_FULLNAME,
         ID as ont_id
  FROM DASH_ONTOLOGY
) ta ON (ta.C_FULLNAME = b.C_DIMCODE)
WHEN MATCHED THEN UPDATE
    SET b.ONTOLOGY_ID = ta.ont_id;
---------------------------------------------
DELETE FROM DASH_TAB_1_B;

INSERT INTO DASH_TAB_1_B
SELECT CURRENT_TIMESTAMP, ONTOLOGY_ID, OBSERVATION_YEAR, UCLA_COUNT,UCI_COUNT,UCSD_COUNT 
  FROM DASH_ALL_SITES
  WHERE 
    UCLA_COUNT!=0 
    AND UCI_COUNT!=0 
    AND UCSD_COUNT !=0
    AND OBSERVATION_YEAR != 9999;
---------------------------------------------