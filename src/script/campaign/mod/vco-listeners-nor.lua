local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_WUL_KEY = "wh_dlc08_nor_norsca";
local SUBCULTURE_KEY = "wh_dlc08_sc_nor_norsca";
local MONSTER_HUNT_MISSION_KEYS = {
	"wh_dlc08_qb_nor_monster_hunt_0",
	"wh_dlc08_qb_nor_monster_hunt_1",
	"wh_dlc08_qb_nor_monster_hunt_2",
	"wh_dlc08_qb_nor_monster_hunt_3",
	"wh_dlc08_qb_nor_monster_hunt_4",
	"wh_dlc08_qb_nor_monster_hunt_5",
	"wh_dlc08_qb_nor_monster_hunt_6",
	"wh_dlc08_qb_nor_monster_hunt_7",
	"wh2_dlc10_qb_nor_monster_hunt_8",
	"wh2_dlc10_qb_nor_monster_hunt_9",
	"wh2_dlc10_qb_nor_monster_hunt_10",
	"wh2_dlc10_qb_nor_monster_hunt_11"
};
local REQUIRED_MONSTER_HUNTS = 6;
local UNLOCKABLE_KHORNE_UNITS = { "wh3_main_kho_inf_bloodletters_0", "wh3_main_kho_inf_bloodletters_1" }
local UNLOCKABLE_NURGLE_UNITS = {	"wh3_main_nur_inf_plaguebearers_0", "wh3_main_nur_inf_plaguebearers_1" }
local UNLOCKABLE_TZEENTCH_UNITS = {	"wh3_main_tze_inf_pink_horrors_0", "wh3_main_tze_inf_pink_horrors_1" }
local UNLOCKABLE_SLAANESH_UNITS = { "wh3_main_sla_inf_daemonette_0", "wh3_main_sla_inf_daemonette_1" }

local function lock_units()
	vlc.unit_locks:lock_units_by_subculture(UNLOCKABLE_KHORNE_UNITS, SUBCULTURE_KEY);
	vlc.unit_locks:lock_units_by_subculture(UNLOCKABLE_NURGLE_UNITS, SUBCULTURE_KEY);
	vlc.unit_locks:lock_units_by_subculture(UNLOCKABLE_TZEENTCH_UNITS, SUBCULTURE_KEY);
	vlc.unit_locks:lock_units_by_subculture(UNLOCKABLE_SLAANESH_UNITS, SUBCULTURE_KEY);
end

local function wul_unlock_units(pooled_resource)
	if pooled_resource == "nor_progress_hound" then
		vlc.unit_locks:unlock_units(UNLOCKABLE_KHORNE_UNITS, FACTION_WUL_KEY);
	elseif pooled_resource == "nor_progress_crow" then
		vlc.unit_locks:unlock_units(UNLOCKABLE_NURGLE_UNITS, FACTION_WUL_KEY);
	elseif pooled_resource == "nor_progress_eagle" then
		vlc.unit_locks:unlock_units(UNLOCKABLE_TZEENTCH_UNITS, FACTION_WUL_KEY);
	elseif pooled_resource == "nor_progress_serpent" then
		vlc.unit_locks:unlock_units(UNLOCKABLE_SLAANESH_UNITS, FACTION_WUL_KEY);
	end
end

local function wul_replenish_movement(character)
	if character:faction():has_effect_bundle("vco_victory_payload_nor_wul_1_ragnarok_1") then
		vlc.characters:replenish_campaign_movement(character);
	end
end

-- CHECKS --

local function check_wul_chaos_allegiance(pooled_resource)
	if not (cm:get_saved_value("vco_nor_wul_is_already_aligned_to_god") or false) then
		wul_unlock_units(pooled_resource);
		vco:complete_mission(FACTION_WUL_KEY, "vco_nor_wul_chaos_allegiance");
		cm:set_saved_value("vco_nor_wul_is_already_aligned_to_god", true);
	end
end

local function check_wul_monster_hunts_completed(mission_record_key)
	for _, mission_key in ipairs(MONSTER_HUNT_MISSION_KEYS) do
		if mission_key == mission_record_key then
			local monster_hunts_completed = (cm:get_saved_value("vco_nor_wul_monster_hunts_succeeded") or 0) + 1;
			cm:set_saved_value("vco_nor_wul_monster_hunts_succeeded", monster_hunts_completed);

			if monster_hunts_completed < REQUIRED_MONSTER_HUNTS then
				vco:set_mission_text("vco_nor_wul_monster_hunts", "vco_nor_wul_3_monster_hunt_" .. monster_hunts_completed);
			else
				vco:set_mission_text("vco_nor_wul_monster_hunts", "vco_nor_wul_3_monster_hunt");
				vco:complete_mission(FACTION_WUL_KEY, "vco_nor_wul_monster_hunts");
			end
		end
	end
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_nor_wul_max_allegiance_with_god_reached",
		"PooledResourceChanged",
		function(context)
			return not context:faction():is_null_interface() and
				context:faction():is_human() and
				context:faction():name() == FACTION_WUL_KEY and
				context:resource():value() == 100;
		end,
		function(context)
			check_wul_chaos_allegiance(context:resource():key());
		end,
		true
	);

	core:add_listener(
		"vco_nor_wul_first_turn_start",
		"FactionTurnStart",
		function(context)
			return cm:model():turn_number() == 1 and
				context:faction():name() == FACTION_WUL_KEY;
		end,
		lock_units,
		false
	);

	core:add_listener(
		"vco_nor_wul_razed_port",
		"CharacterRazedSettlement",
		function(context)
			local faction = context:character():faction();
			return faction:is_human() and
				faction:name() == FACTION_WUL_KEY and
				not context:garrison_residence():settlement_interface():port_slot():is_null_interface();
		end,
		function(context)
			wul_replenish_movement(context:character());
		end,
		true
	);

	core:add_listener(
		"vco_nor_wul_mission_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():is_human() and
				context:faction():name() == FACTION_WUL_KEY;
		end,
		function(context)
			check_wul_monster_hunts_completed(context:mission():mission_record_key());
		end,
		true
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
