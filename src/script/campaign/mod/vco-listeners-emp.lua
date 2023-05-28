local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_VOLKMAR_KEY = "wh3_main_emp_cult_of_sigmar";
local KEY_D_FINAL_SEAL = "vco_emp_vol_dilemma_final_seal";

-- TRIGGERS --

local function trigger_vol_dilemma()
	cm:trigger_dilemma(FACTION_VOLKMAR_KEY, KEY_D_FINAL_SEAL);
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_emp_vol_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_VOLKMAR_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_vol_dilemma,
		false
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
