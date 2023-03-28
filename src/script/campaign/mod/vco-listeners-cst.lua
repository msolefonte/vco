local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_POS_KEY = "wh2_dlc11_cst_pirates_of_sartosa";
local FACTION_CYL_KEY = "wh2_dlc11_cst_the_drowned";
local KEY_D_FINEST_HOUR = "vco_cst_cyl_dilemma_finest_hour";

local function pos_replenish_movement(character)
	if character:faction():has_effect_bundle("vco_victory_payload_cst_sar_1_captain_of_the_swordfysh") then
		vlc.characters:replenish_campaign_movement(character);
	end
end


-- TRIGGERS --

local function trigger_cyl_dilemma()
	cm:trigger_dilemma(FACTION_CYL_KEY, KEY_D_FINEST_HOUR);
    local faction = cm:get_faction("wh2_dlc11_cst_the_drowned");
        cm:add_unit_to_faction_mercenary_pool(faction, "vco_wh2_dlc11_cst_cav_knights_errant_2", "province_recruitment", 6, 100, 6, 1, "", "", "", true, "vco_wh2_dlc11_cst_cav_knights_errant_2");
        cm:add_unit_to_faction_mercenary_pool(faction, "vco_wh2_dlc11_cst_cav_knights_of_the_realm", "province_recruitment", 4, 100, 4, 1, "", "", "", true, "vco_wh2_dlc11_cst_cav_knights_of_the_realm");
        cm:add_unit_to_faction_mercenary_pool(faction, "vco_wh2_dlc11_cst_cav_questing_knights_0", "province_recruitment", 2, 100, 2, 1, "", "", "", true, "vco_wh2_dlc11_cst_cav_questing_knights_0");
end



-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_nor_pos_razed_port",
		"CharacterRazedSettlement",
		function(context)
			local faction = context:character():faction();
			return faction:is_human() and
				faction:name() == FACTION_POS_KEY and
				not context:garrison_residence():settlement_interface():port_slot():is_null_interface();
		end,
		function(context)
			pos_replenish_movement(context:character());
		end,
		true
	);

	core:add_listener(
		"vco_cst_cyl_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_CYL_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_cyl_dilemma,
		false
	);

end





-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
