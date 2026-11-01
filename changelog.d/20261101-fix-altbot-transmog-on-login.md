---
area: bots
type: fixed
audience: players
title: Alt-bots now show the correct transmog on login
---
When a player's alt-bot logged in with CoA.CollectionsForBots = 0, transmog was
not applied because the collection login path was skipped entirely. The bot now
loads its saved appearances at login and applies them to visible item slots
without touching the rest of the collection system. Random bots are unaffected.
