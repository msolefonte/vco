local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_COP_KEY = "wh2_main_def_cult_of_pleasure";
local FACTION_GAN_KEY = "wh2_main_def_har_ganeth";
local GAN_ITEM_REWARD_ARMOR = "wh2_main_anc_armour_armour_of_living_death";
local GAN_ITEM_REWARD_WEAPON = "wh2_main_anc_weapon_hydra_blade";
local UNLOCKABLE_SLAANESH_UNITS = { "wh3_main_sla_mon_fiends_of_slaanesh_0", "wh3_main_sla_mon_keeper_of_secrets_0" };

local function cop_lock_slaanesh_units()
	vlc.unit_locks:lock_units(UNLOCKABLE_SLAANESH_UNITS, FACTION_COP_KEY);
end

local function cop_unlock_slaanesh_units()
	vlc.unit_locks:unlock_units(UNLOCKABLE_SLAANESH_UNITS, FACTION_COP_KEY);
end

local function gan_award_items(faction_key)
	vlc.items:add_item_to_faction_inventory(GAN_ITEM_REWARD_ARMOR, faction_key);
	vlc.items:add_item_to_faction_inventory(GAN_ITEM_REWARD_WEAPON, faction_key);
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_def_cop_first_turn_start",
		"FactionTurnStart",
		function(context)
			return cm:model():turn_number() == 1 and
				context:faction():name() == FACTION_COP_KEY;
		end,
		cop_lock_slaanesh_units,
		false
	);

	core:add_listener(
		"vco_def_cop_route_2_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_COP_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		cop_unlock_slaanesh_units,
		false
	);

	core:add_listener(
		"vco_def_gan_route_2_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_GAN_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		function(context)
			gan_award_items(context:faction():name());
		end,
		false
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
