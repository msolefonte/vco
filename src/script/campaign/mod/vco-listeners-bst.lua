local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_KEY = "wh2_dlc17_bst_taurox";
local BATTLE_KEY = "wh_dlc03_qb_bst_the_final_battle";
local BATTLE_SCRIPT_KEY = "vco_bst_taurox_heart_of_the_dark";

-- CHECKS --

local function complete_bst_taurox_set_piece_battle()
	vco:complete_mission(FACTION_KEY, BATTLE_SCRIPT_KEY);
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_bst_tau_set_piece_battle",
		"MissionSucceeded",
		function(context)
			return not context:faction():is_null_interface() and
				context:faction():is_human() and
				context:faction():name() == FACTION_KEY and
				context:mission():mission_record_key() == BATTLE_KEY;
		end,
		complete_bst_taurox_set_piece_battle,
		true
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();