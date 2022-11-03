local vlc = core:get_static_object("vco-lib-commons");

local FACTION_COP_KEY = "wh2_main_def_cult_of_pleasure";
local UNLOCKABLE_SLAANESH_UNITS = { "wh3_main_sla_mon_fiends_of_slaanesh_0", "wh3_main_sla_mon_keeper_of_secrets_0" };

local function cop_lock_slaanesh_units()
	vlc.unit_locks:lock_units(UNLOCKABLE_SLAANESH_UNITS, FACTION_COP_KEY);
end

local function cop_unlock_slaanesh_units()
	vlc.unit_locks:unlock_units(UNLOCKABLE_SLAANESH_UNITS, FACTION_COP_KEY);
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_def_cop_first_turn_start",
		"FactionTurnStart",
		function(context)
			return cm:model():turn_number() == 1 and
				context:faction():is_human() and
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
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
