local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_ARC_KEY = "wh_main_chs_chaos";
local FACTION_AZA_KEY = "wh3_dlc20_chs_azazel";
local FACTION_FES_KEY = "wh3_dlc20_chs_festus";
local FACTION_VIL_KEY = "wh3_dlc20_chs_vilitch";
local FACTION_VAL_KEY = "wh3_dlc20_chs_valkia";
local NUMBER_GIFTS_REQUIRED = 40;
local KEY_D_SLAYER_KINGS = "vco_chs_arc_dilemma_slayer_kings";
local KEY_D_SUPPLICANTS_COME = "vco_chs_aza_dilemma_supplicants_come";
local KEY_D_LUSTRIAN_PLAGUE = "vco_chs_fes_dilemma_lustrian_plague";
local KEY_D_THE_RECKONING = "vco_chs_vil_dilemma_the_reckoning";
local KEY_D_NKARI_APPROACHES = "vco_chs_val_dilemma_nkari_approaches";

-- TRIGGERS --

local function trigger_arc_dilemma()
	cm:trigger_dilemma(FACTION_ARC_KEY, KEY_D_SLAYER_KINGS);
end

local function trigger_aza_dilemma()
	cm:trigger_dilemma(FACTION_AZA_KEY, KEY_D_SUPPLICANTS_COME);
end

local function trigger_fes_dilemma()
	cm:trigger_dilemma(FACTION_FES_KEY, KEY_D_LUSTRIAN_PLAGUE);
end

local function trigger_vil_dilemma()
	cm:trigger_dilemma(FACTION_VIL_KEY, KEY_D_THE_RECKONING)
	if not cm:get_faction("wh_main_chs_chaos") then
    cm:spawn_character_to_pool("wh3_dlc20_chs_vilitch", "names_name_2147343903", "names_name_21473573645", "", "", 18, true, "general", "vco_wh_main_chs_archaon", true, "");
    
    elseif not cm:get_faction("wh_main_chs_chaos"):was_confederated()
    then
    cm:spawn_character_to_pool("wh3_dlc20_chs_vilitch", "names_name_2147343903", "names_name_21473573645", "", "", 18, true, "general", "vco_wh_main_chs_archaon", true, "");
    end
end

local function trigger_val_dilemma()
	cm:trigger_dilemma(FACTION_VAL_KEY, KEY_D_NKARI_APPROACHES);
end

--CHECKS
local function check_aza_gifts_given()
	vco:log("check_aza_gifts_given | Function Entry");
	local gifts_given = cm:get_saved_value("gifts_given_" .. FACTION_AZA_KEY) or 0;
	vco:log("check_aza_gifts_given | Gifts given prior to this event: " .. gifts_given);

	local gifts_given_incremented = gifts_given + 1;
	cm:set_saved_value("gifts_given_" .. FACTION_AZA_KEY, gifts_given_incremented);
	vco:log("check_aza_gifts_given | Gifts given after this event: " .. gifts_given_incremented);

	if gifts_given_incremented < NUMBER_GIFTS_REQUIRED then
		vco:log("check_aza_gifts_given | Gifts given evaluation: Not enough gifts given");
		vco:set_mission_text("vco_" .. FACTION_AZA_KEY .. "_gifts_given", "vco_sla_gifts_given_" .. gifts_given_incremented);
	else
		vco:log("check_aza_gifts_given | Gifts given evaluation: Gifts given equals or exceeds requirement, mission completed");
		vco:set_mission_text("vco_" .. FACTION_AZA_KEY .. "_gifts_given", "vco_sla_gifts_given_completed");
		vco:complete_mission(FACTION_AZA_KEY, "vco_" .. FACTION_AZA_KEY .. "_gifts_given");
	end
end


-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_chs_aza_gifts_given",
		"FactionCharacterTagAddedEvent",
		function(context)
			vco:log("vco_chs_aza_gifts_given | Conditional Function");
			return context:tagging_faction():is_human() and
				context:tagging_faction():name() == FACTION_AZA_KEY
		end,
		check_aza_gifts_given,
		true
	);

	core:add_listener(
		"vco_chs_aza_2_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_AZA_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_aza_dilemma,
		false
	);

	core:add_listener(
		"vco_chs_fes_2_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_FES_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_fes_dilemma,
		false
	);

	core:add_listener(
		"vco_chs_vil_2_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_VIL_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_vil_dilemma,
		false
	);

core:add_listener(
    "adds_trait_to_possessed_archaon",
    "CharacterCreated",
    function(context)
			return context:character():character_subtype_key() == "vco_wh_main_chs_archaon"
    end,
    function(context)
        local character = context:character()
        local cqi = character:command_queue_index()
        local lookup_str = cm:char_lookup_str(cqi)
        cm:force_add_trait(lookup_str,"vco_trait_archaon_possessed", true, 1)
        cm:force_add_ancillary(character,"vco_anc_weapon_the_slayer_of_kings", false, true)
        cm:force_add_ancillary(character,"vco_anc_talisman_the_eye_of_sheerian", false, true)
        cm:force_add_ancillary(character,"vco_anc_armour_the_armour_of_morkar", false, true)
        cm:force_add_ancillary(character,"vco_anc_enchanted_item_the_crown_of_domination", false, true)
        cm:force_add_ancillary(character,"vco_anc_arcane_item_vilitchs_locket", false, false)
        cm:add_agent_experience(lookup_str, 20000)
    end,
    false
    );
    
	core:add_listener(
		"vco_chs_val_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_VAL_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_val_dilemma,
		false
	);

	core:add_listener(
		"vco_chs_arc_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_ARC_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_arc_dilemma,
		false
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
