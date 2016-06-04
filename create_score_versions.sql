create table score_versions (
guid text,
assignment text,
score int,
generation text,
lastmodified timestamp,
version_id serial,
validity_date timestamp not NULL,
validity_end_date timestamp
);