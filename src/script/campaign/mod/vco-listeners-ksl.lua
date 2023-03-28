local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_TGO_KEY = "wh3_main_ksl_the_great_orthodoxy";
local FACTION_TIC_KEY = "wh3_main_ksl_the_ice_court";
local SUBCULTURE_KEY = "wh3_main_sc_ksl_kislev";
local KEY_D_CALL_FOR_AID = "vco_ksl_kat_dilemma_call_for_aid";


local function tgo_unlock_flagellants()
    local faction = cm:get_faction("wh3_main_ksl_the_great_orthodoxy");
        cm:add_unit_to_faction_mercenary_pool(faction, "vco_wh_dlc04_emp_inf_flagellants_0", "province_recruitment", 5, 100, 5, 1, "", "", "", true, "vco_wh_dlc04_emp_inf_flagellants_0");
end

local function tic_unlock_dwarf_units()
    local faction = cm:get_faction("wh3_main_ksl_the_ice_court");
        cm:add_unit_to_faction_mercenary_pool(faction, "vco_wh_main_dwf_inf_slayers", "province_recruitment", 5, 100, 5, 1, "", "", "", true, "vco_wh_main_dwf_inf_slayers");
        cm:add_unit_to_faction_mercenary_pool(faction, "vco_wh2_dlc10_dwf_inf_giant_slayers", "province_recruitment", 3, 100, 3, 1, "", "", "", true, "vco_wh2_dlc10_dwf_inf_giant_slayers");
end

local function tic_unlock_empire_units()
    local faction = cm:get_faction("wh3_main_ksl_the_ice_court");
        cm:add_unit_to_faction_mercenary_pool(faction, "vco_wh_main_emp_art_mortar", "province_recruitment", 3, 100, 3, 1, "", "", "", true, "vco_wh_main_emp_art_mortar");
        cm:add_unit_to_faction_mercenary_pool(faction, "vco_wh_main_emp_art_great_cannon", "province_recruitment", 3, 100, 3, 1, "", "", "", true, "vco_wh_main_emp_art_great_cannon");
end

-- TRIGGERS --

local function trigger_tic_dilemma()
	cm:trigger_dilemma(FACTION_TIC_KEY, KEY_D_CALL_FOR_AID);
end

local function trigger_tic_dilemma_choice_made(choice)
	if choice == 1 then
		tic_unlock_dwarf_units();
	elseif choice == 2 then
		tic_unlock_empire_units();
	end
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_ksl_first_turn_start",
		"FactionTurnStart",
		function()
			return cm:model():turn_number() == 1;
		end,
		ksl_lock_units,
		false
	);

	core:add_listener(
		"vco_ksl_tgo_route_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_TGO_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		tgo_unlock_flagellants,
		false
	);

	core:add_listener(
		"vco_ksl_tic_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_TIC_KEY and
				context:mission():mission_issuer_record_key() == "KING_KAZADOR";
		end,
		trigger_tic_dilemma,
		false
	);

	core:add_listener(
		"vco_ksl_tic_dilemma_choice_made",
		"DilemmaChoiceMadeEvent",
		function(context)
			return context:dilemma() == KEY_D_CALL_FOR_AID;
		end,
		function(context)
			trigger_tic_dilemma_choice_made(context:choice());
		end,
		true
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
