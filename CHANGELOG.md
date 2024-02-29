# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [5.16.0] - 22.02.2024

- Added new routes for Malus Darkblade: Hag Graef
- Updated Karl Franz: Reikland Storm of Chaos quest battle rebalancing
- Updates Karak Eight Peak quest battles for Belegar, Skarsnik and Queek, they are activate upon completion of the tier
  1 landmark at Karak Eight Peaks, instead of tier 3
- Updates Heinrich Kemmler: The Barrow Legion routes 2 reward now gives a reduction and cooldown to the Lore of
  Vampires, instead of the Lore of Death
- Fixed the Great Game bug

## [5.15.0] - 17.01.2024

- Added new routes for Belegar Ironhammer: Clan Angrund
- Added new routes for Skarsnik: Crooked Moon
- Added new routes for Queek Headtaker: Clan Mors
- Added quest battles for Belegar, Skarsnik and Queek triggered by upgrading the Karak Eight Peaks landmark to maximum.
- Updated Default Short Victory rewards no longer are rewarded in addition to VCO's custom rewards.
- Updated Karl Franz: Reikland reworked route 3, completion now triggers the Storm of Chaos quest battle inspired by the
  Immortal Empires trailer.
- Updated VCO quest battles, so they are playable from the main menu.
- Fixed a bug, where Zhatan's route 1 victory condition triggered prematurely.
- Fixed a bug, where Throgg's route 1 was impossible to complete.

## [5.14.0] - 24.12.2023

- Added new routes for Throgg: Wintertooth
- Added new routes for Alith Anar: Nagarythe
- Added Vortex quest battle objective for Throt the Unclean: Clan Moulder, where Ghoritch can fight against Archaon and
  get his revenge (triggers by completing route 1).
- Added Vortex quest battle objective for Alarielle the Radiant: Avelorn, where she fights a corrupted Ariel and absorbs
  her powers (triggers by completing route 3).
- Added Vortex quest battle objective for Crone Hellebron: Har Ganeth, where Hellebron fights Alarielle at Avelorn (
  triggers by building the Shrine of Khaine).
- Fixed a bug where Sisters of Twilight route 1 wasn't appearing.
- Fixed bug where Kemmler's route 1 reward wasn't applying upkeep reduction.

## [5.13.1] - 02.12.2023

- Added Vortex quest battle for Taurox the Brass Bull: Slaughterhorn Tribe
- Disabled logging which generates text files on your data folder
- Fixed intermittent crashes caused by AI being able to acquire quest battles when they shouldn't be allowed to
- Fixed Sisters of Twilight final quest battle causing a crash/game freeze

## [5.13.0] - 22.11.2023

- Added new routes for Alarielle the Radiant: Avelorn
- Added new custom battle objective Alarielle the Radiant: Avelorn themed around her rivalry with Hellebron from the
  Queen & the Crone DLC
- Added Vortex quest battle objective for Arkhan the Black: Followers of Nagash
- Added Vortex quest battle objective for Sisters of Twilight: Heralds of Ariel
- Added Vortex quest battle objective for Throt the Unclean: Clan Moulder
- Fixed crash caused by the 4.1 update

## [5.12.0] - 07.11.2023

- Added new routes for Vlad/Isabella von Carstein: Sylvania
- Added new routes for Ungrim Ironfist: Karak Kadrin
- Added a quest battle for Snikch (against Malus Darkblade)
- Fixed a bug where Shadows of Change Route 1 objectives were not registering as complete
- Fixed a bug where Book of Nagash collection was not detected properly, bricking routes
- Fixed a bug that caused Mazdamundi and Kostaltyn not counting their building objectives towards completion
- Fixed a bug where Aranessa's objectives gave debuffs instead of buffs
- Fixed multiple minor bugs affects bugs with Hellebron, Kemmler, Snikch and Mannfred

## [5.11.0] - 19.09.2023

- Added new routes for Nakai the Wanderer: Spirit of the Jungle

## [5.10.0] - 11.09.2023

- Added new routes for Mother Ostankya: Daughters of the Forest
- Added new routes for The Changeling: The Deceivers
- Added a new method to the framework API: `vco:disable_vco_main_mod_routes()`
- Added a new method to the framework API: `vco:are_vco_main_mod_routes_disabled()`
- Revisited Miao Ying: The Northern Provinces routes
- Fixed a bug that caused VCO Ready campaigns to be overridden by other mods
- Deprecated framework API `vco:disable_default_campaigns()`
- Deprecated framework API `vco:are_default_campaigns_enabled()`

## [5.9.0] - 01.09.2023

- Added new routes for Yuan Bo: The Jade Court

## [5.8.0] - 12.08.2023

- Added new routes for Tretch Craventail: Clan Rictus

## [5.7.0] - 06.07.2023

- Added new routes for Malagor the Dark Omen: Harbinger of Disaster
- Added an optional SFO compatibility patch to the dist folder
- Fixed the infamous <dummy> bug

## [5.6.1] - 28.05.2023

- Fixed a bug that caused Zhatan the Black's campaign (The Warhost of Zharr) to be won on turn one

## [5.6.0] - 14.04.2023

- Added new routes for Volkmar the Grim: Cult of Sigmar
- Added new routes for Be'lakor: Shadow Legion
- Fixed crash caused by the latest update
- Fixed rare chance for certain routes to abort
- Fixed reported text formatting issues
- Fixed Zhatan's Storm of Fire army ability reward not working properly

## [5.5.2] - 14.04.2023

- Added immortality to Grimgor Ironbound and Archaon the Everslave
- Added two custom items for Grimgor to acquire from defeating the Chaos Dwarfs in Route 2
- Fixed a bug that caused Bull Centaur Tauruks to be unable to be recruited

## [5.5.1] - 14.04.2023

- Added flags back in to signify VCO supported factions
- Added Grimgor Ironbound Legendary Hero (custom items and skill tree that buffs Labourers), oh and yes he's Expendable
- Revisited all factions who were near the Dark Lands and gave them new Chaos Dwarf targets
- Changed one of Drazhoath's buffs that gave port income
- Fixed reported bugs

## [5.5.0] - 14.04.2023

- Added new routes for Astragoth Ironhand: Disciples of Hashut
- Added new routes for Drazhoath the Ashen: The Legion of Azgorh
- Added new routes for Zhatan the Black: The Warhost of Zharr
- Added new routes for Astragoth Ironhand: Disciples of Hashut (Realms of Chaos)
- Added new routes for Drazhoath the Ashen: The Legion of Azgorh (Realms of Chaos)
- Added new routes for Zhatan the Black: The Warhost of Zharr (Realms of Chaos)
- Fixed a display issue with Zhao Ming's gold collection objective
- Fixed a visual issue where Archaon's lord objectives were not appearing in faction select screen

## [5.4.0] - 28.03.2023

- Added new routes for Helman Ghorst: Caravan of Blue Roses
- Added new routes for Repanse de Lyonesse: Chevaliers de Lyonesse
- Added new routes for Cylostra Direfin: The Drowned
- Fixed a ton of bugs but forgot to kept track of which ones. We will let you guess this time

## [5.3.0] - 03.02.2023

- Added full support for Realms of Chaos. Now all faction are covered!
- Added new routes for Azazel: The Ecstatic Legion
- Added new routes for Festus: The Fecundites
- Added new routes for Valkia the Bloody: Legion of the Gorequeen
- Added new routes for Vilitch the Curseling: Puppets of Misrule
- Added new routes for Imrik: Knights of Caledor
- Added new routes for Azazel: The Ecstatic Legion (Realms of Chaos)
- Added new routes for Festus: The Fecundites (Realms of Chaos)
- Added new routes for Valkia the Bloody: Legion of the Gorequeen (Realms of Chaos)
- Added new routes for Vilitch the Curseling: Puppets of Misrule (Realms of Chaos)
- Updated Tyrion: Eataine third route: Now unifying the Wood Elves will result in them being forcefully vassalised
- Fixed a bug that was preventing multiplayer flavour text from displaying and victory rewards from triggering
- Fixed a display issue where other Kislev factions could see Katarin's unlockable units

## [5.2.1] - 13/01/2023

- Added missing Clan Eshin check for target factions being destroyed, preventing Snikch from defeating their leader in
  battle (Thanks @Thrakerzod & @Cheato1!)
- Fixed locking units to subcultures which was causing a crash during the first AI turns
- Fixed race-specific unit locking applying on faction-specific first turn for Norsca + Kislev
- Fixed missing Ancillary item key table which was preventing Victory Conditions Overhaul ancillary additions

## [5.2.0] - 12/01/2023

- Added new routes for Deathmaster Snikch: Clan Eshin
- Added new ancillary item rewards for several factions
- Updated The Western Provinces with a new objective to earn a certain amount of money
- Updated the method used to grant ancillary items to factions such that they display properly
- Fixed (most) aborting objectives that don't complete when targets are destroyed or no longer exist
- Fixed Book of Nagash objectives not completing when a faction doesn't collect all nine books
- Fixed some minor bugs, spelling errors, and generalisations across IME/RoC

## [5.1.0] - 27/12/2022

- Added Realm of Chaos support for all factions except Champions of Chaos
- Added new routes for Boris Ursus: Ursun Revivalists
- Added new routes for Skrag the Slaughterer: Prophets of the Maw
- Added new routes for Tzarina Katarin: The Ice Court
- Added new routes for Heinrich Kemmler: The Barrow Legion
- Added new routes for Crone Hellebron: Har Ganeth
- Updated Bordeleaux second route: A dilemma has been added as a reward
- Updated The Huntmarshal's Expedition third route: Route reward has been improved
- Updated The Northern Provinces third route: A dilemma has been added as a reward
- Updated The Western Provinces second route: Route completely redesigned
- Updated The Western Provinces third route: Killing Greasus Goldtooth is no longer required
- _(Technical)_ Added new common functions for VCO listeners: Add item to faction pool
- Fixed some minor bugs

## [5.0.0] Out of beta! - 14/12/2022

- Added new routes for Grombrindal: The Ancestral Throng
- Added new routes for Kairos Fateweaver: Oracles of Tzeentch
- Added new routes for Ku'gath: Poxmakers of Nurgle
- Added new routes for Karl Franz: Reikland
- _(Technical)_ Updated CHANGELOG format
- General cleanup! We are finally out of beta!

## [5.0.0-beta-9] Apocalypse Now - 01/12/2022

- Added new routes for Archaon: Warhost of the Apocalypse
- Added new routes for Daemon Prince: Legion of Chaos
- Added new routes for Skarbrand: Exiles of Khorne
- Added new routes for Taurox: Slaughterhorn Tribe
- Added new routes for Sisters of Twilight: Heralds of Ariel
- Updated The Drakenhof Conclave third route reward: Now Mannfred also gets the Ghal Maraz ability
- Improved flavour and replaced icons

## [5.0.0-beta-8] The Corruptor and the Incorruptible - 30/11/2022

- Added new routes for Tyrion: Eataine
- Added new routes for N'Kari: Seducers of Slaanesh
- Fixed a bug that caused Clan Moulder first objective to be unachievable
- Fixed World Walkers' Skeggi objective and payload location
- Improved flavour and replaced icons

## [5.0.0-beta.7.HOTFIX-1] - 07/11/2022

- Fixed a bug that allowed AI factions to recruit unlockable units
- Improved flavour and replaced icons

## [5.0.0-beta.7] Tales from the East Blue - 04/11/2022

- Added new routes for Aranessa Saltspite: Pirates of Sartosa
- Added new routes for Wulfrik the Wanderer: World Walkers
- Fixed a bug that caused Arkhan the Black and Mannfred von Carstein book count to never go up
- _(Technical)_ Added a new export VCO Lib Commons to standardise implementation across all scripts/submods
- _(Technical)_ Refactored almost all scripts files. Now each race has its own listeners file
- _(Technical)_ Added a linter for TSV files

## [5.0.0-beta.6] The Restless Dunes - 23/10/2022

- Added new routes for Arkhan the Black: Followers of Nagash
- Added new routes for Mannfred von Carstein: The Drakenhof Conclave
- Changed how flavour is displayed: now the text colour is white and there is no bullet point check
- Changed Clan Moulder's 2nd route: Now required settlements have to be occupyied instead of sacked
- Changed Clan Moulder's 3rd route: Now controlling the Mountains of Hel and destroying Wintertooth are also required
- Fixed Grimgor's Ardboyz, Clan Moulder and Goldtooth Tribe objectives based on controlling a set number of provinces
- Fixed Goldtooth Tribe's third route objective based on controlling a set of regions
- Fixed Grimgor's Ardboyz and The Huntsmarshal's Expedition objectives based on razing settlements
- Improved flavour, replaced icons and fixed typos

## [5.0.0-beta.5.HOTFIX-3] - 03/10/2022

- Dense today, aren't we?

## [5.0.0-beta.5.HOTFIX-2] - 03/10/2022

- I forgot to update the pack file :D

## [5.0.0-beta.5.HOTFIX-1] - 03/10/2022

- Fixed a bug that caused The Great Orthodoxy's Route III to be unachievable

## [5.0.0-beta.5] War in the North - 26/09/2022

- Added new routes for Throt the Unclean: Clan Moulder
- Added new routes for Kostaltyn: The Great Orthodoxy
- Fixed a bug with The Huntsmarshal's Expedition second route reward
- Improved descriptions and fixed typos

## [5.0.0-beta.4] The Fat and the Furious - 20/09/2022

- Added new routes for Grimgor Ironhide: Grimgor's 'Ardboyz
- Added new routes for Greasus Goldtooth: Goldtooth Tribe
- _(Technical)_ Added new common functions for VCO listeners: `is_faction_military_ally_or_destroyed()`,
  `is_faction_vassal_or_destroyed()` and `is_faction_under_your_control()`

## [5.0.0-beta.3] Plunder in the Jungle - 12/09/2022

- Added new routes for Lord Mazdamundi: Hexoatl
- Added new routes for Morathi: Cult of Pleasure
- Now VCO-ready factions are displayed as Recommended First Campaigns in the campaign selector
- Changed Bordeleaux Errant's Alberic's Grail Quest route: now it also requires defeating Itza
- Fixed a bug that prevented new Victory Conditions from loading in the Objectives panel
- Improved descriptions and fixed typos

## [5.0.0-beta.2] The Hunter and the Knight - 06/09/2022

- Added new routes for Markus Wulfhart: The Huntsmarshal's Expedition
- Added new routes for Alberic de Bordeleaux: Bordeleaux Errant
- All routes have been turned into Short Victories to prevent triggering Endgame Scenarios
- Payloads renamed into Rewards for better readability
- _(Technical)_ Now effects and effects bonus include a race identifier in the key

## [5.0.0-beta.1] Immortal Empires Early Access - 03/09/2022

- Unified the framework and the main mod
- Added support for Immortal Empires
- Added complete new routes for The Northern Provinces and The Western Provinces
- Added custom tailored payloads after completing a route
- Added an integration with Legendary Lore
- Added native support for multiplayer

## [4.1.1] - 25/08/2022

- Removed database, text and listeners
- Code has been ported into VCO Framework to work towards unification

## [4.1.0] - 11/08/2022

- The Great Game (Nurgle, Slaanesh, Tzeentch) and Blood for the Blood God (Khorne) routes modified
    - Now it is required to achieve the highest corruption in 100 regions instead of 50
- Treasure increase after completing a route reduced from 50000 to 15000
- Updated CHANGELOG.md format

## [4.0.1] - 21/04/2022

- Skulls required by Skarbrand increased from 20000 to 88888
- Fixed a bug that caused the Realms of Chaos route (Nurgle, Slaanesh, Tzeentch) to be unachievable

## [4.0.0] Realms of Chaos Release - 23/03/2022

- Warhammer III (Realms of Chaos) release
- New routes for all new factions

## [3.2.0] The Imperial Update - 12/01/2022

- Destroying Clan Rictus is no longer required as Karaz-a-Karak
- Clan Eshin revisited:
    - Route I now has to achieve 65 reputation with two clans (instead of 78)
    - Route II now requires you to perform agent assassinations
    - Route III does not longer require destroying Karaz-a-Karak
- Added support for Mixu's Legendary Lords
    - Averland: Threat Elimination (Mixed), Destruction (Wood Elves) and Miscellany (Craziness)
    - Hochland: Unification (Northern Empire), Threat Elimination (Norsca), Commercial Victory
    - Marienburg: Commercial Victory, Threat Elimination (Albion), Naval Supremacy
    - Middenland: Threat Elimination (Mixed), Unification (Northern Empire), Corruption (Ulric, Northern Empire)
    - Nordland: Threat Elimination (Norsca), Naval Supremacy, Commercial Victory
    - Ostermark: Threat Elimination (Mixed), Unification (Eastern Empire), Miscellany (Witch Hunting)
    - Ostland: Threat Elimination (Norsca), Expansion (Kislev), Unification (Northern Empire)
    - Stirland: Corruption (Sigmar, Eastern Empire), Threat Elimination, Unification (Eastern Empire)
    - Talabecland: Threat Elimination (Mixed), Corruption (Taal, Eastern Empire), Unification (Eastern Empire)
    - Wissenland: Magic Supremacy, Destruction (Vampire Counts/Tomb Kings), Edification
- Fixed bugs
    - Destroying Clan Rictus as Karaz-a-Karak is no longer required
    - Clan Eshin reputation is now detected properly
    - Clan Skryre Workshop level is now detected properly
    - _(Technical)_ is_multiplayer() check has been removed, now add_first_tick_callback() is used

## [3.1.0] - 21/12/2021

- Added in-game tags for all routes (i.e. Unification/Conquest/Naval Supremacy)
- Commercial Victories (Lothern/Exiles of Nehek/Bordeleaux) now also required a minimum trading income of 5000 and at
  least 6 trading partners
- Now the Karak-Eight-Peaks conquest (Clan Angrund/Crooked Moon/Clan Mors) has to be done in less than 75 turns
- Added a Magic Supremacy route for Bonerattlaz
- Add placeholders for future factions (Cataph's TEB + Kraka Drak/OvN Amazons + Araby + The Moot)
- Fixed a bug that prevented Ironbow's Expedition Route I from loading
- Solved a bug that caused The Thousand Maws Victory Conditions to be vanilla

## [3.0.0] The Routes Rework - 14/12/2021

- Introduced new feature _Routes_. Now, instead of having evolving campaigns with _Short_, _Long_ and _Ultimate_
  checkpoints, you can choose completely different ways to approach your campaign. For example, as Dwarfs, you can now
  win
  by destroying the close threats, unifying all the old world dwarfholds or clearing the book of grudges. You can
  complete
  all of them, two or just one. Up to you to decide what is funnier.
- New introduced _Routes_ have been developed with the intent of offering different ways to enjoy the game: In a lot of
  occasions, now it will be viable to play tall/defensively, without any requisite related to paint the map.
- Complete rework for all old-word factions:
    - Empire:
        - Reikland: Two new routes (Unification (Empire)/Threat Elimination)
        - The Golden Order: Three new routes (Edificiation/Threat Elimination (Vampires)/Threat Elimination (South))
        - The Huntsmarshal's Expedition: Three new routes (Acclaim/Conquest (Lustria)/Threat Elimination)
    - Dwarfs:
        - Karak-a-Karak: Three new routes (Grudges/Unification (Dwarfholds)/Threat Elimination)
        - Karak Kadrin: Two new routes (Threat Elimination (Vampires)/Threat Elimination (Norsca))
        - Clan Angrund: Three new routes (Conquest (Karak Eight Peaks)/Threat Elimination/Conquest (Fallen Dwarfholds))
        - Ironbrow's Expedition: Two new routes (Artefacts forging/Unification (Dwarfholds))
    - Greenskins:
        - Grimgor's Argboyz: Two new routes (Unification (Greenskins)/Destruction)
        - Bonerattlaz: Two new routes (Threat Elimination/Destruction)
        - The Bloody Handz: Three new routes (Unification (Badlands)/Looting (Lore-based)/Magical Areas Control)
        - Crooked Moon: Two new routes (Conquest (Karak Eight Peaks)/Threat Destruction)
        - Broken Axe: Three new routes (Chapter Objectives/Looting (Lore-based)/Raiding)
    - Vampire Counts:
        - Sylvania: Two new routes (Expansion/Edification)
        - Von Carstein: Two new routes (Conquest (Empire + Sylvania)/Edification)
        - The Barrow Legion: Three new routes (Corruption (Bretonnia)/Corruption (Athel Loren)/Magical Areas Control)
    - Bretonnia:
        - Couronne: Three new routes (Unification (Bretonnia)/Threat Elimination/Final Battle)
        - Bordeleaux: Three new routes (Threat Elimination (Pirates)/Commerce/Final Battle)
        - Carcassone: Three new routes (Threat Elimination (Generic)/Threat Elimination (Wood Elves)/Final Battle)
        - Chevaliers de Lyonesse: Three new routes (Destruction (Tomb Kings)/Conquest (Araby)/Final Battle)
    - Warriors of Chaos:
        - Warriors of Chaos: Two new routes (Destruction/Destruction (Lore-based))
    - Beastmen:
        - Warherd of the One-Eye: Three new routes (Resource Accumulation/Destruction (Empire)/Final Battle)
        - Harbinger of Disaster: Two new routes (Destruction (Tomb Kings)/Destruction (Greenskins))
        - Warherd of the Shadowgave: Two new routes (Destruction/Destruction (Wood Elves))
        - Slaughterhorn Tribe: Three new routes (Resource Accumulation/Destruction/Final Battle)
    - Wood Elves:
        - Talsyn: Three new routes (Unification (Athel Loren)/Rebirth/Final Battle)
        - Argwylon: Three new routes (Threat Elimination/Unification (Athel Loren)/Final Battle)
        - Heralds of Ariel: Three new routes (Forest Health Accumulation/Rebirth/Final Battle)
        - Wargrove of Woe: Three new routes (Unification (Athel Loren)/Destruction (Wood Elves)/Final Battle)
    - Norsca:
        - World Walkers: Two new routes (Gods Favour/Conquest (World Capitals))
        - Wintertooth: Two new routes (Threat Elimination/Gods Favour)
    - High Elves:
        - Lothern: Three new routes (Unification (Ulthuan)/Threat Elimination/Commerce)
        - Order of Loremasters: Three new routes (Expansion/Threat Elimination/Edification)
        - Nagarythe: Three new routes (Expansion/Threat Elimination/Edification)
        - Averlon: Three new routes (Unification (Ulthuan)/Threat Elimination (Norsca Targeted)/Edification)
        - Knights of Caledor: Three new routes (Control Legendary Dragons/Expansion/Edification)
        - Yvresse: Three new routes (Defence Level/Expansion/Threat Elimination)
    - Dark Elves:
        - Naggarond: Three new routes (Unification (Naggaroth)/Conquest (Ulthuan)/Naval Supremacy)
        - Cult of Pleasure: Three new routes (Threat Elimination/Conquest (Ulthuan)/Edification)
        - The Blessed Dread: Three new routes (Threat Elimination/Edification/Naval Supremacy)
        - Har Ganeth: Three new routes (Conquest (Gaean Vale)/Threat Elimination/Edification)
        - Hag Graef: Two new routes (Threat Eliminations/Chapter Objectives)
        - The Thousand Maws: Two new routes (Expansion (Naval)/Destruction)
    - Lizardmen:
        - Hexoatl: Three new routes (Unification (Lustria)/Threat Elimination/Edification)
        - Last Defenders: Three new routes (Expansion/Threat Elimination/Edification)
        - Tlagua: Two new routes (Expansion/Threat Elimination)
        - Cult of Sotek: Three new routes (Untained (Lustria)/Threat Elimination/Battle Captives)
        - Itza: Three new routes (Unification (Lustria)/Threat Elimination/Edification)
        - Spirit of the Jungle: Three new routes (Expansion/Destruction/Old Ones Favour)
        - Ghosts of Pahuax: Three new routes (Visions of the Old Ones/Chapter Objectives/Destruction (Slaughterhorn))
    - Skaven:
        - Clan Mors: Three new routes (Control (Karak Eight Peaks)/Threat Elimination/Edification)
        - Clan Pestilens: Two new routes (Corruption (Lustria)/Threat Elimination)
        - Clan Rictus: Three new routes (Corruption/Threat Elimination/Edification)
        - Clan Skryre: Three new routes (Forbidden Workshop/Destruction/Corruption)
        - Clan Eshin: Three new routes (Reputation/Rituals/Destruction)
    - Tomb Kings:
        - Khemri: Three new routes (Edification/Destruction (Nagash)/Expansion)
        - Court of Lybaras: Three new routes (Threat Elimination/Expansion/Conquest (Black Pyramid of Nagash))
        - Exiles of Nehek: Three new routes (Threat Elimination/Commerce/Crafting Rituals)
        - Followers of Nagash: Three new routes (Destruction (Khemri)/Edification/Conquest (Black Pyramid of Nagash))
    - Vampire Coast:
        - The Awakened: Three new routes (Repair Harkon's mind/Expansion (Ports)/Infamy)
        - The Dreadfleet: Three new routes (Destruction (Vampire Coast)/Edification/Infamy)
        - Pirates of Sartosa: Three new routes (Infamy/Battle Captives/Edification)
        - The Drowned: Three new routes (Conquest (Ulthuan Ports)/Edification/Infamy)
- A lot of bugfixes

## [2.6.0] The Wolf and The Goats - 19/07/2021

- Introduction to a new approach to victory conditions, only affecting some factions by now:
    - Short Victories are now meant to be SHORT. Under 50 turns short
    - Long Victories are the new short ones, should not take more than 100 turns
    - Ultimate Victories are the big ones, usually target to occupy at least 250 turns
- Complete rework of Beastmen
    - Warherd of the One-Eye (Khazrak the One-Eye):
        - Short-term focus destroying the Empire of Man, long-term focus on destroying Bretonnia
    - Harbinger of Disaster (Malagor the Dark Omen):
        - Short-term focus destroying the Greenskins (Badlands area), long-term focus on destroying Tomb Kings
    - Warherd of the Shadowgave (Morghur the Corruptor):
        - Short-term focus destroying the Wood Elves, long-term focus on destroying High Elves
    - Slaughterhorn Tribe (Taurox the Brass Bull):
        - Mean to be played targeting Dark Elves and Lizardmen, but open to any kind of destruction. Just kill. A lot
- New victory conditions for Ghosts of Pahuax (Oxyotl)
    - Less focused on individual factions / Spending all time in Norsca
    - More focused on travelling around the world and completing Visions of the Old Ones

## [2.5.0] Population & Corruption Update - 15/05/2021

- Updated Knights of Caledor victory conditions
    - Required buildings to achieve a Short Victory have been reduced to Purified Graves of the Dragons and a Dragon
      Keep
    - Required buildings to achieve a Long Victory have been reduced to Purified Graves of the Dragons, a Dragon Keep,
      and the Hall of Dragons
    - All required units have been changed to dragons
- Most of the skaven factions corruption requirements have been modified
    - Affects al factions except Clan Pestilens
    - Required corruption has been reduced from 52% to 39%
- Some changes introduced to Exiles of Nehek
    - Building the Black Pyramid is no longer required to achieve a Short Victory
    - Building a Grave Port is now required to achieve a Short Victory
    - Building three Grave Ports is now required to achieve a Long Victory
- Some changes introduced to Clan Rictus
    - Corrupting Ishtmus of Lustria is no longer required by Clan Rictus to achieve a Short Victory
    - Corrupting Eataine is no longer required to achieve a Long Victory
- Added docs for The Thousand Maws
- Defeating chaos is no longer required by The Thousand Maws to achieve a Short Victory
- Defeating The Thousand Maws is now required by Couronne to achieve a victory
- Defeating The Thousand Maws is now required by Bordeleaux to achieve a victory
- Defeating The Thousand Maws is now required by Reikland to achieve a Long Victory
- Both Temple Cities and Temple Nexus are now valid by Hexoatl to achieve a Short Victory
- Both Geomantic Spires and Geomantic Locus are now valid by Last Defenders to achieve a Short Victory
- Both Blood Shrines of Sotek and Crimson Pyramid of Sotek are now valid by Cult of Sotek to achieve a Short Victory
- Building the Altdorf Landmark is no longer required by Von Carstein to achieve a Short Victory
- Fixed a bug that caused Clan Skyre Short Campaign to be unachievable
- Fixed a bug where Followers of Nagash had to create non-existent buildings
- Special thanks to **BoyNamedHsu** for his help with this release

## [2.4.0] The Woods and The Dragons - 03/02/2021

- Redone added to Knights of Caledor
    - Controlling Plains of Bones is now required to achieve a victory
    - Building the Purified Graves of the Dragons to achieve a victory
    - Destroying Green Skins is no longer required to achieve a Short Victory
    - TBD Raze or sack Black Crag is now required to achieve a Short Victory
    - Building the Hall of Dragons is now required to achieve a Long Victory
- Minor redone introduced to Talsyn
    - Destroying factions is no longer required to obtain a victory
    - Performing 3 Rituals of Rebirth is now required to achieve a Short Victory
    - Performing 8 Rituals of Rebirth is now required to achieve a Long Victory
- Redone added to Argwylon
    - Destroying or confederating Wargrove of Woe is now required to achieve a victory
    - Performing 3 Rituals of Rebirth is now required to achieve a Short Victory
    - Performing 5 Rituals of Rebirth is now required to achieve a Long Victory
    - Controlling Gryphon Wood and Forest of Gloom is now required to achieve a Long Victory
    - Fixed a bug where non-tree units where required to achieve a Long Victory
- Introduced objectives for the Wargrove of Woe
    - Controlling Athel Loren is required to achieve a victory
    - Destroying Talsyn, Argwylon, Wydrioth and Torgovann is required to achieve a victory
    - Completing the final battle is required to achieve a victory
    - Performing 3 Rituals of Rebirth is required to achieve a Short Victory
    - Performing 5 Rituals of Rebirth is required to achieve a Long Victory
    - Destroying Laurelorn Forest, Heralds of Ariel, Bowmen of Oreon and Avelorn is required to achieve a Long Victory
- All Bretonnian factions have had modified the to require 800 Chivalry to obtain a Short Victory and 1600 to achieve a
  Long/Ultimate victory
    - Repanse de Lyonesse is the only faction with no Short Victory
- Fixed a bug where Court of Lybaras had to control/maintain untainted the Doom Glades
    - The province was placed in some requirements in the place of Doom Glade, a region in the Crater of the Walking
      Dead
- Fixed some grammatical mistakes in the docs
- Building Plague Abbeys and Plague Cauldrons requirements have been removed from Clan Pestilens because, due to a motor
  bug, they were never triggered
- Wounding Archaon has been removed from all factions, as it can never be achieved if Chaos Invasion is no
- Known bugs:
    - In some cases, the new conditions do not appear till triggered with the "Victory Objectives" button

## [2.3.0] The Hammer and The Viper - 16/12/2020

- Major redone has been introduced to the Court of Lybaras faction
    - Constructing a Pyramid has been removed from the Short Victory
    - Controlling Broken Teeth, Crater of the Walking Dead, Doom Glades and Devil's Backbone is now a requirement
    - Maintaining 80% untainted in Broken Teeth, Crater of the Walking Dead, Doom Glades, Devil's Backbone,
      Southlands Jungle, Kingdom of Beasts is now a requirement
    - Destroying Followers of Nagash is now required to achieve a Long Victory
    - Destroying The Awakened, The Dradfleet and The Drowned is no longer required
    - The aim is to keep it more focused in corruption/skavens an less on pyramids/empires to not overlap with other
      Tomb Kings factions. Lustria has been removed completely
- Redone introduced to the Karaz-a-Karak faction
    - Controlling Northern Great Mountains and Southern Great Mountains is no longer required to achieve a short victory
    - Building the Throne Hall of the High King is now required to achieve both types of victory
    - The aim is to keep the Dwarfs more local and defensive. The removed regions are too far away for a short victory

## [2.2.0] Minor Update - 5/12/2020

- Add support for The Twisted & The Twilight DLC
- Fix a bug with the Bonerattlaz faction
- Removed building the Great Temple of Ulric from Reiskland Short Victory conditions
- NOTE:
    - Support for the new factions/Wood Elves rework has not been added. I do not own the DLC

## [2.1.1] Minor Update - 10/11/2020

- Controlling Northern Grey Mountains is no longer required by Karak Kadrin to achieve a Short Victory
- Fixed bugs / Minor changes
    - Lyonesse Ultimate Victory conditions remained vanilla
    - Clan Rictus victory conditions were a mix of vanilla and modded
    - Destroying Borderleaux was missing from The Dreadfleet Short Victory conditions
    - Fall of Man Beastmen quest battle popped randomly and multiple times
- Sad reports
    - It is not possible to turn instances of Sack/Raze specific locations into Occupy/Loot/Raze/Sack for non horde
      factions in order to prevent weird situations where you had to attack your own settlements. The key
      OCCUPY_LOOT_RAZE_OR_SACK_X_SETTLEMENTS_INCLUDING does not exist

## [2.1.0] Major Update - 25/07/2020

- The number of special buildings required by The Blessed Dread to achieve a Short Victory has been reduced to 1
- The number of special buildings required by The Blessed Dread to achieve a Long Victory has been reduced to 3
- Controlling Western Badlands is not longer required by Knights of Caledor
- Building the White Tower of Hoeth landmark is no longer required by the Order of Loremasters to achieve a Short
  Victory
- Building the Black Citadel of Anlec is no longer required by Nagarythe to achieve a Short Victory
- Razing or looting Tor Yvresse, White Tower of Hoeth and Lothern is now required by Broken Axe to achieve a Short
  Victory
- Destroying Crooked Moon, Broken Nose and Skullsmasherz is no longer required by Grimgor's 'Ardboyz to achieve a Short
  Victory
- Destroying Naggarond and Cult of Please is no longer required by Eataine to achieve a Short Victory
- Razing or sacking Naggarond is now required by Eataine to achieve a Short Victory
- Getting Slann mages to level 20 is no longer required by Hexoatl
- Building the Great Halls of Nagashizzar is no longer required by Bonerattlaz
- Redone of Cult of Pleasure
    - Building the Sanctum of Quintex is now required to achieve a victory
    - Building 4 Court of the Dark Prince is now required to achieve a Short Victory
    - Building 7 Court of the Dark Prince is now required to achieve a Long Victory
    - Getting 1 Sorceress to lvl 20 is now required to achieve a Short Victory
    - Getting 3 Sorceress to lvl 20 is now required to achieve a Long Victory
    - Controlling Black Arks objectives have been removed
- Redone of The Bloody Handz
    - Razing or looting Sartosa is now required to achieve a victory
    - Razing or looting Copher, Fyrus and Al Haikk is no longer required to achieve a Short Victory
    - Having at least 80% Untainted in Southern Badlands and Western Badlands is now required to achieve a Short Victory
    - Having at least 80% Untainted in Easter Badlands, Southern Badlands and Western Badlands is now required to
      achieve a Long Victory
- Redone of Vor Carstein's Long Victory conditions
    - Destroying World Walkers and Wintertooth is no longer required
    - Destroying Clan Moulder and Couronne is now required
    - Controlling Southern Oblast and Fort Soll is now required
- Redone of The Golden Order
    - Destroying Clan Spittel is now required to achieve a victory
    - Destroying The Bloody Handz is no longer required to achieve a Short Victory
    - Controlling Fort Soll, Black Mountains, Eastern Border Princes and Western Border Princes is now required to
      achieve a Long Victory
- Fixed bugs / Minor changes
    - Renamed some Naggarond objective descriptions as they where wrong
    - Now Bretonnia and Wood Elves are going to have Short/Ultimate victories instead of Short/Long
    - Fixed a bug where Hexoatl had to control 14 provinces instead of 2 to achieve a Short Victory
    - Solved a bug where Bonerattlaz long victory conditions remained vanilla
    - Solved a bug where Durthu's and Orion's victory conditions where switched
    - Fixed a bug where Tlaqua had to build Basic Military instead of Ripperdactyl Hatcheries to achieve a victory
    - Solved a bug where Tlaqua has to build Star Chambers to achieve a Long Victory
    - Fixed a bug where Cult of Sotek long victory conditions remained vanilla
    - Solved a bug where Itza long victory conditions remained vanilla
    - Fixed a bug where Beastmen final battle never happened
    - Solved a bug where some unit requirements numbers where weird and different from the docs

## [2.0.1] Minor Fix - 18/07/2020

- Now Followers of Nagash have to control the Black Pyramid of Nagash to achieve a Short Victory
- Fixed a bug where Clan Mors had to destroy Clan Mors to achieve a victory

## [2.0.0] VCO 2.0 - 14/07/2020

- Update to Victory Conditions Overhaul 2.0
    - Compatibility improved
        - Support with faction unlockers and startpos modifiers
        - Now compatible with Steel Faith Overhaul
    - Submods/Extensions are now possible
        - Specific content for mod factions coming
        - New victory conditions available:
            - Military, Cultural and Economic victory are going to be available as extensions
    - Extended scripting support
        - More variety of objectives available
- Greenskins factions victory conditions completely redone
- Lizardmen factions victory conditions completely redone
- Skaven factions victory conditions completely redone
- Tomb Kings factions victory conditions completely redone
- Warrios of Chaos victory conditions completely redone
- Now Bordeleaux, Bretonnia and Carcassone only need 800 Chivalry to achieve a Short Victory
- Now Bordeleaux, Bretonnia and Carcassone only need 1600 Chivalry to achieve a Long Victory

