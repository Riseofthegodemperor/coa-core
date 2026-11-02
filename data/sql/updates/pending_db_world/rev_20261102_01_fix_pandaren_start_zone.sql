-- Alliance Pandaren (race 20) was placed in Mulgore (Horde territory) by
-- 6_race_starts_1.4.sql, but ChrRaces.dbc marks race 20 Alliance.
-- Move all race-20 playercreateinfo rows to Northshire.
UPDATE playercreateinfo
SET map = 0, zone = 12, position_x = -8949.95, position_y = -132.493, position_z = 83.5312, orientation = 0
WHERE race = 20;
