local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_TAT_KEY = "wh3_main_dwf_the_ancestral_throng";
local FACTION_UNGRIM_KEY = "wh_main_dwf_karak_kadrin";
local FACTION_BELEGAR_KEY = "wh_main_dwf_karak_izor";

local KEY_D_ELVES = "vco_dwf_gro_dilemma_elves";
local KEY_D_AMBUSH_DUKHYLS_FOREST = "vco_dwf_ungr_dilemma_ambush_dukhyls_forest";


-- TRIGGERS --

local function trigger_grombrindal_dilemma()
	cm:trigger_dilemma(FACTION_TAT_KEY, KEY_D_ELVES);
end

local function trigger_ungrim_dilemma()
	cm:trigger_dilemma(FACTION_UNGRIM_KEY, KEY_D_AMBUSH_DUKHYLS_FOREST);
end

local function trigger_dwf_belegar_skavenblight_qb()
      cm:trigger_mission(FACTION_BELEGAR_KEY, "vco_custom_quest_belegar_skavenblight", true);
end

local function trigger_belegar_eight_peaks_quest()
    cm:trigger_mission(FACTION_BELEGAR_KEY, "vco_custom_quest_belegar_eight_peaks", true);
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

	core:add_listener(
		"vco_dwf_belegar_1_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_BELEGAR_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_dwf_belegar_skavenblight_qb,
		false
	);

    core:add_listener(
    "vco_dwf_belegar_karak_eight_peaks_qb",
    "BuildingCompleted",
    function(context)
        local building = context:building();
        return not cm:get_saved_value("vco_dwf_bel_karak_eight_peaks_already_happened") and
        building:name() == "wh_dlc06_dwf_eight_peaks_1" and
        building:faction():name() == FACTION_BELEGAR_KEY and
        building:faction():is_human() and
        not building:faction():is_null_interface();
    end,
    function()
      cm:set_saved_value("vco_dwf_bel_karak_eight_peaks_already_happened", true);
      trigger_belegar_eight_peaks_quest();
    end,
    true
    );

end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
