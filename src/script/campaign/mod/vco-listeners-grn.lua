local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_SKARSNIK_KEY = "wh_main_grn_crooked_moon";

local KEY_D_DANGER_DROPS = "vco_grn_ska_dilemma_danger_drops";


-- TRIGGERS --

local function trigger_skarsnik_eight_peaks_quest()
    cm:trigger_mission(FACTION_SKARSNIK_KEY, "vco_custom_quest_skarsnik_eight_peaks", true);
end

local function trigger_skarsnik_dilemma()
	cm:trigger_dilemma(FACTION_SKARSNIK_KEY, KEY_D_DANGER_DROPS);
end

local function tic_discover_gorduz_treachery()
    cm:apply_effect_bundle("vco_victory_payload_grn_ska_dilemma_danger_drops_seriously", "wh_main_grn_crooked_moon", 10);
end

local function trigger_skarsnik_dilemma_choice_made(choice)
	if choice == 0 then
		tic_discover_gorduz_treachery();
	elseif choice == 1 then

	end
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_grn_ska_2_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_SKARSNIK_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_skarsnik_dilemma,
		false
	);

	core:add_listener(
		"vco_grn_ska_dilemma_choice_made",
		"DilemmaChoiceMadeEvent",
		function(context)
			return context:dilemma() == KEY_D_DANGER_DROPS;
		end,
		function(context)
			trigger_skarsnik_dilemma_choice_made(context:choice());
		end,
		true
	);

    core:add_listener(
    "vco_grn_skarsnik_karak_eight_peaks_qb",
    "BuildingCompleted",
    function(context)
        local building = context:building();
        return not cm:get_saved_value("vco_grn_ska_karak_eight_peaks_already_happened") and
        building:name() == "wh_dlc06_grn_eight_peaks_3" and
        building:faction():name() == FACTION_SKARSNIK_KEY and
        building:faction():is_human() and
        not building:faction():is_null_interface();
    end,
    function()
      cm:set_saved_value("vco_grn_ska_karak_eight_peaks_already_happened", true);
      trigger_skarsnik_eight_peaks_quest();
    end,
    true
    );

end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
