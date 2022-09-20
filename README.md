[![Steam Workshop Subscribers](https://img.shields.io/endpoint?style=for-the-badge&url=https%3A%2F%2Fshieldsio-steam-workshop.jross.me%2F2858059010%2Fsubscriptions-text)](https://steamcommunity.com/sharedfiles/filedetails/?id=2858059010)
[![Steam Workshop Favorites](https://img.shields.io/endpoint?style=for-the-badge&url=https%3A%2F%2Fshieldsio-steam-workshop.jross.me%2F2858059010%2Ffavourites-text)](https://steamcommunity.com/sharedfiles/filedetails/?id=2858059010)

# Victory Conditions Overhaul

[![GitHub release](https://img.shields.io/github/release/msolefonte/vco.svg?style=flat)](https://GitHub.com/msolefonte/vco/releases/)
[![Patreon](https://img.shields.io/endpoint.svg?url=https%3A%2F%2Fshieldsio-patreon.vercel.app%2Fapi%3Fusername%3Dwolfylpdc%26type%3Dpatrons&style=flat)](https://www.patreon.com/wolfylpdc)
[![GitHub license](https://img.shields.io/github/license/msolefonte/vco?style=flat)](https://github.com/msolefonte/vco/blob/master/LICENSE)
[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg?style=flat)](http://makeapullrequest.com)

[Steam Workshop Mod Link](https://steamcommunity.com/workshop/filedetails/?id=2858059010)

Victory Conditions Overhaul mod for Total War: Warhammer III.

## Introduction

Victory Conditions Overhaul introduces a major rework of the default victory conditions. It rejects the classic idea of
short and long campaigns and proposes a new concept based on completing **routes**. A route is a campaign on its own, 
customly tailored for each faction and lord, and completing it will be enough to achieve a victory and unlock the 
achievements. 

All factions have three routes available, each one with a tone. They are mean to be short and completed around 50-70
turns. You can start anywhere, but you do not have to stop there: we consider completing one route equals a Short
Victory, completing two equals a Long one, and you already got it with the Ultimate. Furthermore, **compelting a route 
will reward you with tailored and loreful benefits** that will help you keep the campaign ongoing.

## New Features

Victory Conditions Overhaul 5 does not only introduce new routes for Immortal Empires, but also long-time requested 
features. This includes, but is is not limited, to the following:

* **Unification** between the framework and the main mod: You will not need two mods anymore. In the close future the 
rest of the submods will be merged into this one.
* Native support for **Multiplayer**. Yes, finally you will be able to play your customly tailored multiplayer 
campaigns. 
* Collaboration with **Legendary Lore**. Now, completing certain evens will trigger small bits of lore. Custom rewards 
and missions also include some text to make them feel loreful.
* Custom tailored **rewards after completing a route**. You secured a trade route? Your economy is boosted. You unfied 
your empire? Your citizens are happier. You honored your gods? They will help you back.
* The mod still works as a **framework**. Feel free to create submods or your own custom routes!

## How to use

### As a user

Subscribe and enjoy.

### As a developer

To create a submod you have to create a `.pack` file composed by two things: the framework loader and the victory
conditions. First of all, you have to decide a name for your mod. This name does not have the be the same that the
one you use in the `.pack` file or the Steam Workshop, but has to be consistent along the mod. In this guide, we are
going to call it `your-mod-name`.

#### The framework loader

Once decided, you have to create a script named `<your-mod-name>.lua` and place it in the `script/campaign/mod/` folder.
The content of that script has to be the following one:

```lua
local vco = core:get_static_object("vco");

vco:disable_default_campaigns();
cm:add_first_tick_callback(function() vco:trigger_custom_missions("<your-mod-name>") end);
```

#### The factions folders

Then, you have to create the folder `src/script/<your-mod-name>` and place there a folder for each faction you want to 
mod. Inside that folder, create one new folder for each campaign you want to cover. The name has to be the campaign key.
An example of this would be `main_warhammer` or `wh3_main_chaos`.

Now, next folder name has to be the key of the faction, which can be checked in the table `factions`, available at Dave. 
For example, the folder name for The Golden Order has to be `wh2_dlc13_emp_golden_order`. Finally, inside of it, you 
have to create a `missions.lua` file where all the victory conditions are going to be placed.

All in all, to add new victory conditions to The Golder Order Immortal Empires campaign, you have to create these files:

* `script/campaign/mod/<your-mod-name>.lua`
* `script/<your-mod-name>/main_warhammer/wh2_dlc13_emp_golden_order/missions.lua`

#### The objectives script

Now, inside of each `missions.lua`, you have to export a list of missions, which is an array of strings in the default
`victory_objectives.txt` format. Here goes one simple example:

```lua
local missions = {
	[[
 		mission
		{
			victory_type vco_victory_type_alternative_2_threat_elimination;
			key wh_main_short_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 2;
					override_text mission_text_text_wh_main_objective_override_empire_sylvania;

					province wh_main_eastern_sylvania;
					province wh_main_western_sylvania;
				}

				objective
				{
					type DESTROY_FACTION;

					faction wh_main_vmp_vampire_counts;
					faction wh_main_vmp_schwartzhafen;

					confederation_valid;
				}

				payload
				{
					game_victory;
				}
			}
		}
	]]
};

return missions;
```

As the missions interfaces are changing constantly, as I keep adding new options. You can find the list in this 
framework under the path `src/db/victory_types_tables/vco`. It is important to understand that only one type of each
can be available at the same time per faction, so, if you own multiple submods that add, for example, a Long Victory
condition, one is going to override the other.

## Frequently Asked Questions

The FAQ can be found [here](https://www.github.com/msolefonte/tww2-vco2-framework/docs/faq.md).

## Contributing

Feel free to add issues or to create pull requests. Help is always welcome.

## Versioning

[SemVer](http://semver.org/) is used for versioning. For the changelog, see [CHANGELOG.md](CHANGELOG.md).

## Authors

* **Marc Solé Fonte**: *Initial work* - [msolefonte](https://github.com/msolefonte)
* **Oh_Man[TFE]**: *Added new routes and introduced new lore blocks* - [Oh_Man[TFE]](https://steamcommunity.com/profiles/76561197972445688/)
* **Vindico**: *Added new routes* - [MichaelBrown08](https://github.com/MichaelBrown08)

## License

This project is licensed under the Apache License, Version 2.0 - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

* Special thanks to all the users that have supported the development economically.
* Special thanks to all the modders of the **Da Modding Den** Discord for their knowledge and experience.
