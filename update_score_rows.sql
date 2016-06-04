BEGIN;

UPDATE scores
SET 
assignment = 'Música',
score = score + 1,
lastmodified = now()
WHERE guid = 'WER346-79';

UPDATE scores
SET 
assignment = 'Botes',
score = 6,
lastmodified = now()
WHERE guid = 'WER346-69';

UPDATE scores
SET 
score = 9,
lastmodified = now()
WHERE guid = 'WEA346-89';

UPDATE scores
SET 
generation = '2011-2',
score = 10,
lastmodified = now()
WHERE guid = 'WEÑ346-89';

UPDATE scores
SET 
score = 5,
lastmodified = now()
WHERE guid = 'WER346-49';

COMMIT;