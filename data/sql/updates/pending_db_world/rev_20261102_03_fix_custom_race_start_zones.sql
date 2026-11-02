-- Fix start zones for 11 custom races whose faction (FT) disagrees with their start zone.
-- Authority: FactionID (FT) in ChrRaces.dbc determines which side a race shows on in the
-- character creation screen. All races below were starting in the wrong faction's zone.
--
-- Alliance races (FT=1 or FT=4) -> Northshire: map=0, zone=12
-- Horde races   (FT=2 or FT=5) -> Durotar:    map=1, zone=14

-- Races 22 (Broken), 30 (Troglodyte), 62 (Lightforged), 78 (Jinyu),
--       82 (Sethrak Alliance), 109 (Ethereal Alliance) -> Alliance -> Northshire
UPDATE `playercreateinfo`
SET `map` = 0, `zone` = 12,
    `position_x` = -8949.95, `position_y` = -132.493, `position_z` = 83.5312
WHERE `race` IN (22, 30, 62, 78, 82, 109);

-- Races 29 (Pandaren Horde), 55 (Eredar), 60 (BloodElf DH),
--       63 (Nightborne), 81 (Darkfallen) -> Horde -> Durotar
UPDATE `playercreateinfo`
SET `map` = 1, `zone` = 14,
    `position_x` = -618.518, `position_y` = -4251.67, `position_z` = 38.718
WHERE `race` IN (29, 55, 60, 63, 81);
