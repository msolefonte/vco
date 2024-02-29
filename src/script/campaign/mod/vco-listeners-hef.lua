local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_TYR_KEY = "wh2_main_hef_eataine";
local FACTION_SOT_KEY = "wh2_dlc16_wef_sisters_of_twilight";
local FACTION_ORI_KEY = "wh_dlc05_wef_wood_elves";
local FACTION_LAU_KEY = "wh3_main_wef_laurelorn";
local FACTION_ORE_KEY = "wh2_main_wef_bowmen_of_oreon";
local FACTION_TOR_KEY = "wh_dlc05_wef_torgovann";
local FACTION_WYD_KEY = "wh_dlc05_wef_wydrioth";
local FACTION_ALARIELLE_KEY = "wh2_main_hef_avelorn";
local FACTION_ALARIELLE_ORION_KEY = "wh_dlc05_wef_wood_elves";
local FACTION_ALARIELLE_TWILIGHT_KEY = "wh2_dlc16_wef_sisters_of_twilight";
local FACTION_ALARIELLE_DURTHU_KEY = "wh_dlc05_wef_argwylon";
local FACTIONS_THAT_CAN_CONTROL_ARIEL = {FACTION_ALARIELLE_ORION_KEY, FACTION_ALARIELLE_TWILIGHT_KEY, FACTION_ALARIELLE_DURTHU_KEY};


-- TRIGGERS --

local function trigger_tyr_vassals()
	cm:force_make_vassal(FACTION_TYR_KEY, FACTION_SOT_KEY);
    cm:force_make_vassal(FACTION_TYR_KEY, FACTION_ORI_KEY);
    cm:force_make_vassal(FACTION_TYR_KEY, FACTION_LAU_KEY);
    cm:force_make_vassal(FACTION_TYR_KEY, FACTION_ORE_KEY);
    cm:force_make_vassal(FACTION_TYR_KEY, FACTION_TOR_KEY);
    cm:force_make_vassal(FACTION_TYR_KEY, FACTION_WYD_KEY);
end

local function trigger_ala_alarielle_ariel_qb()
      cm:trigger_mission(FACTION_ALARIELLE_KEY, "vco_custom_quest_alarielle_ariel", true);
end



-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_hef_rou_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_TYR_KEY and
				context:mission():mission_issuer_record_key() == "KING_KAZADOR";
		end,
		trigger_tyr_vassals,
		false
	);

	core:add_listener(
		"vco_hef_ala_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_ALARIELLE_KEY and
				context:mission():mission_issuer_record_key() == "KING_KAZADOR";
		end,
		trigger_ala_alarielle_ariel_qb,
		false
	);

    core:add_listener(
    "vco_hef_alarielle_battle_crones_folly",
    "BuildingCompleted",
    function(context)
        local building = context:building();
        return not cm:get_saved_value("vco_hef_alarielle_battle_crones_folly_already_happened") and
        building:name() == "wh2_main_special_everqueen_court_hef" and
        building:faction():name() == FACTION_ALARIELLE_KEY and
        building:faction():is_human() and
        not building:faction():is_null_interface();
    end,
    function()
      cm:set_saved_value("vco_hef_alarielle_battle_crones_folly_already_happened", true);
      cm:trigger_mission(FACTION_ALARIELLE_KEY, "vco_custom_quest_alarielle_hellebron", true);
    end,
    true
    );

core:add_listener(
    "vco_hef_ala_3_quest_battle_completed",
    "MissionSucceeded",
    function(context)
        return context:faction():name() == FACTION_ALARIELLE_KEY and
            context:faction():is_human() and
            context:mission():mission_record_key():starts_with("vco_custom_quest_alarielle_ariel");
    end,
    function()
        local character = nil;
        for _, faction_key in pairs(FACTIONS_THAT_CAN_CONTROL_ARIEL) do
            character = cm:get_most_recently_created_character_of_type(faction_key , nil, "wh2_dlc16_wef_ariel");
            if character ~= nil and not character:is_null_interface() then break end;
        end

        local cqi = character:command_queue_index();

        cm:set_character_immortality(cqi, false);
        cm:kill_character(cqi, false);
    end,
    false
);

end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
