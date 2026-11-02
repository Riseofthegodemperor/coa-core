-- Populate ascension_custom_class_race for all playable races.
-- INSERT IGNORE skips any (class,race) pair that already exists (idempotent).
-- Every (class,race) present in playercreateinfo is inserted; nothing else is touched.
INSERT IGNORE INTO `ascension_custom_class_race` (`class`, `race`)
SELECT DISTINCT `class`, `race` FROM `playercreateinfo`;
