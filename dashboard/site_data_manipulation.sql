CREATE INDEX "UCLAMETADATA"."DASH_UCSD_DIMCODE" ON "UCLAMETADATA"."DASH_UCSD" ("C_DIMCODE");
CREATE INDEX "UCLAMETADATA"."DASH_UCI_DIMCODE" ON "UCLAMETADATA"."DASH_UCI" ("C_DIMCODE");

#To create tab_1_b
#1 create the table first
#load the columns with years and ontology names
#fill in results in the table