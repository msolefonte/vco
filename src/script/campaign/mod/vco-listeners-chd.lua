local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_AST_KEY = "wh3_dlc23_chd_astragoth";
local FACTION_DRA_KEY = "wh3_dlc23_chd_legion_of_azgorh";
local FACTION_ZHA_KEY = "wh3_dlc23_chd_zhatan";
local KEY_D_GRIMGOR = "vco_chd_ast_dilemma_old_foe";
local KEY_D_BLACK_ARK = "vco_chd_dra_dilemma_witch_kings_gift";
local KEY_D_RIFT = "vco_chd_zha_dilemma_marcher_fortress";

-- TRIGGERS --

local function trigger_ast_dilemma()
	cm:trigger_dilemma(FACTION_AST_KEY, KEY_D_GRIMGOR);
end

local function trigger_dra_dilemma()
	cm:trigger_dilemma(FACTION_DRA_KEY, KEY_D_BLACK_ARK);
end

local function trigger_zha_dilemma()
	cm:trigger_dilemma(FACTION_ZHA_KEY, KEY_D_RIFT);
end

local function zha_unlock_black_orcs()
    local faction = cm:get_faction("wh3_dlc23_chd_zhatan");
        cm:add_unit_to_faction_mercenary_pool(faction, "vco_wh_main_grn_inf_black_orcs", "province_recruitment", 3, 100, 3, 1, "", "", "", true, "vco_wh_main_grn_inf_black_orcs");
end

local function trigger_chd_dilemma_choice_made(choice)
	if choice == 0 then
    cm:spawn_unique_agent(cm:get_faction("wh3_dlc23_chd_astragoth"):command_queue_index(), "vco_wh_main_grn_grimgor_ironbound", true)
	end
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_chd_ast_2_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_AST_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_ast_dilemma,
		false
	);

	core:add_listener(
		"vco_chd_ast_dilemma_choice_made",
		"DilemmaChoiceMadeEvent",
		function(context)
			return context:dilemma() == KEY_D_GRIMGOR;
		end,
		function(context)
			trigger_chd_dilemma_choice_made(context:choice());
		end,
		true
	);

	core:add_listener(
		"vco_chd_dra_1_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_DRA_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_dra_dilemma,
		false
	);

	core:add_listener(
		"vco_chd_zha_2_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_ZHA_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_zha_dilemma,
		false
	);

core:add_listener(
    "adds_trait_and_items_to_hero_grimgor_chd",
    "CharacterCreated",
    function(context)
			return context:character():character_subtype_key() == "vco_wh_main_grn_grimgor_ironbound"
    end,
    function(context)
        local character = context:character()
        local cqi = character:command_queue_index()
        local lookup_str = cm:char_lookup_str(cqi)
        cm:force_add_ancillary(character,"vco_anc_weapon_gitsnik", false, true)
        cm:force_add_ancillary(character,"vco_anc_armour_blood-forged_armour", false, true)
        cm:force_add_ancillary(character,"vco_anc_talisman_mecha_arm", false, false)
        cm:force_add_ancillary(character,"vco_anc_enchanted_item_chains_of_binding", false, false)
        cm:add_agent_experience(lookup_str, 16400)
    end,
    false
    );


	core:add_listener(
		"vco_chd_zha_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_ZHA_KEY and
				context:mission():mission_issuer_record_key() == "KING_KAZADOR";
		end,
		zha_unlock_black_orcs,
		false
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
