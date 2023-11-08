local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_TAT_KEY = "wh3_main_dwf_the_ancestral_throng";
local FACTION_UNGRIM_KEY = "wh_main_dwf_karak_kadrin";

local KEY_D_ELVES = "vco_dwf_gro_dilemma_elves";
local KEY_D_AMBUSH_DUKHYLS_FOREST = "vco_dwf_ungr_dilemma_ambush_dukhyls_forest";


-- TRIGGERS --

local function trigger_grombrindal_dilemma()
	cm:trigger_dilemma(FACTION_TAT_KEY, KEY_D_ELVES);
end

local function trigger_ungrim_dilemma()
	cm:trigger_dilemma(FACTION_UNGRIM_KEY, KEY_D_AMBUSH_DUKHYLS_FOREST);
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
		trigger_grombrindal_dilemma,
		false
	);
	
	core:add_listener(
		"vco_dwf_ung_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_UNGRIM_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_ungrim_dilemma,
		false
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
