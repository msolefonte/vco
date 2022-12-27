local FACTION_MAN_KEY = "wh_main_chs_chaos";
local KEY_D_SLAYER_KINGS = "vco_chs_arc_dilemma_slayer_kings";

-- TRIGGERS --

local function trigger_man_dilemma()
	cm:trigger_dilemma(FACTION_MAN_KEY, KEY_D_SLAYER_KINGS);
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_chs_man_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_MAN_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_man_dilemma,
		false
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
