---
area: server
type: fixed
audience: admins
title: Custom race characters no longer start in the wrong faction's starting zone
---
Twelve custom races had mismatched start zones and TeamID values relative to the faction
their character creation screen placement implied (determined by FactionID in ChrRaces.dbc).
Alliance races were starting in Eversong or Ammen Vale; Horde races in Northshire or Ammen Vale.
Fixed start zones for all affected races and corrected race 29 (Pandaren Horde) TeamID in
the server DBC to match its Horde faction template.
