local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_VOLKMAR_KEY = "wh3_main_emp_cult_of_sigmar";
local FACTION_MARKUS_KEY = "wh2_dlc13_emp_the_huntmarshals_expedition";
local KEY_D_FINAL_SEAL = "vco_emp_vol_dilemma_final_seal";
local KEY_D_TROPHY_HALL = "vco_emp_mar_dilemma_hunting_trophy";
local KEY_B_BATTLE_ITZA = "wh2_dlc13_qb_emp_final_battle_wulfhart";
local KEY_B_BATTLE_SCRIPT_ITZA = "vco_emp_markus_battle_for_itza";
local KEY_PR_EMP_PROGRESS = "emp_progress";

-- TRIGGERS --

local function trigger_vol_dilemma()
	cm:trigger_dilemma(FACTION_VOLKMAR_KEY, KEY_D_FINAL_SEAL);
end

local function trigger_markus_dilemma()
	cm:trigger_dilemma(FACTION_MARKUS_KEY, KEY_D_TROPHY_HALL);
end

local function complete_emp_markus_set_piece_battle()
	vco:complete_mission(FACTION_MARKUS_KEY, KEY_B_BATTLE_SCRIPT_ITZA);
end

local function trigger_mar_quest()
    cm:trigger_mission(FACTION_MARKUS_KEY, "wh2_dlc13_qb_emp_final_battle_wulfhart", true);
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

	core:add_listener(
		"vco_emp_mar_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_MARKUS_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_markus_dilemma,
		false
	);

	core:add_listener(
		"vco_emp_mar_set_piece_battle",
		"MissionSucceeded",
		function(context)
			return not context:faction():is_null_interface() and
				context:faction():is_human() and
				context:faction():name() == FACTION_MARKUS_KEY and
				context:mission():mission_record_key() == KEY_B_BATTLE_ITZA;
		end,
		complete_emp_markus_set_piece_battle,
		true
	);

	core:add_listener(
		"vco_emp_mar_max_acclaim",
		"PooledResourceChanged",
		function(context)
			return not context:faction():is_null_interface() and
				context:faction():is_human() and
				context:faction():name() == FACTION_MARKUS_KEY and
				context:resource():key() == KEY_PR_EMP_PROGRESS and
                context:resource():value() >= 100;
		end,
		trigger_mar_quest,
		true
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
