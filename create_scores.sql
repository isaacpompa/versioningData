-- psql -U college_dba -d college

create table scores (
guid text,
assignment text,
score int,
generation text,
lastmodified timestamp
);