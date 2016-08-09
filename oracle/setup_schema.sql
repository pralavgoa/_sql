CREATE USER i2b2metadata 
  identified by password 
  temporary tablespace temp 
  default tablespace users;

GRANT CONNECT TO i2b2metadata;
GRANT RESOURCE TO i2b2metadata;
GRANT CREATE SESSION TO i2b2metadata;
GRANT create table TO i2b2metadata;
GRANT create view TO i2b2metadata;
GRANT create any trigger TO i2b2metadata;
GRANT create any procedure TO i2b2metadata;
GRANT create sequence TO i2b2metadata;
GRANT create synonym TO i2b2metadata;  
ALTER USER i2b2metadata quota unlimited on USERS;
