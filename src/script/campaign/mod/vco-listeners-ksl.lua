local vlc = core:get_static_object("vco-lib-commons");

local FACTION_TGO_KEY = "wh3_main_ksl_the_great_orthodoxy";
local KEY_U_LUMINARK = "wh_main_emp_veh_luminark_of_hysh_0";

local function tgo_lock_luminark()
	vlc.unit_locks:lock_unit(KEY_U_LUMINARK, FACTION_TGO_KEY);
end

local function tgo_unlock_luminark()
	vlc.unit_locks:unlock_unit(KEY_U_LUMINARK, FACTION_TGO_KEY);
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_ksl_tgo_first_turn_start",
		"FactionTurnStart",
		function(context)
			return cm:model():turn_number() == 1 and
				context:faction():is_human() and
				context:faction():name() == FACTION_TGO_KEY;
		end,
		tgo_lock_luminark,
		false
	);

	core:add_listener(
		"vco_ksl_tgo_route_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_TGO_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		tgo_unlock_luminark,
		false
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
