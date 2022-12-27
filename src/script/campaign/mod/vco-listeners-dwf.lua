local FACTION_TAT_KEY = "wh3_main_dwf_the_ancestral_throng";
local KEY_D_ELVES = "vco_dwf_gro_dilemma_elves";

-- TRIGGERS --

local function trigger_man_dilemma()
	cm:trigger_dilemma(FACTION_TAT_KEY, KEY_D_ELVES);
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_dwf_gro_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_TAT_KEY and
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
