-- Reset reputations for all characters whose race had a faction mismatch (TeamID vs FT).
-- The server initialises reputation from Faction.dbc at first login after a DELETE.
-- Affects: Chen Stormstout (race 20), Akama (race 22), Archimonde / Kiljaeden Deceiver /
--          Akaari Shadowgore (race 55), unnamed test char / Exarch Yrel (race 62).
DELETE FROM `character_reputation`
WHERE `guid` IN (5345, 5320, 5318, 5319, 5334, 5300, 5330);
