-- Trasladar todos los registros de una tabla a otra
-- Algunos registros se modifican, lastmodified nos dice si están modificados
-- Ejecuto el script con la condiciòn lastmodified que extraiga los modificados

-- psql -U college_dba -d college -v boolean_statement="lastmodified = '2016-06-03 17:17:58.926926'" -f version_scores.sql

BEGIN;
--UPDATE score_versions
--SET validity_end_date = now()
--FROM (SELECT lastmodified FROM score_versions
--      WHERE validity_end_date IS NULL AND :boolean_statement) AS rowNull;
--WHERE :boolean_statement;

UPDATE score_versions
SET validity_end_date = now()
FROM (SELECT guid FROM scores
      WHERE :boolean_statement) AS s
WHERE score_versions.guid = s.guid AND validity_end_date IS NULL;

INSERT INTO score_versions(
	guid,
  assignment,
  score,
  generation,
  lastmodified,
  validity_date)
SELECT
  guid,
  assignment,
  score,
  generation,
  lastmodified,
  now()
FROM scores
WHERE :boolean_statement;
COMMIT;