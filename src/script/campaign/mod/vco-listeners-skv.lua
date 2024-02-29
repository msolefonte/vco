local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_ESH_KEY = "wh2_main_skv_clan_eshin";
local FACTION_MDR_KEY = "wh2_main_skv_clan_moulder";
local FACTION_RICTUS_KEY = "wh2_dlc09_skv_clan_rictus";
local KEY_D_HARVEST = "vco_skv_mdr_dilemma_ultimate_harvest";
local KEY_D_AMBUSH_EVERPEAK = "vco_skv_tre_dilemma_ambush_everpeak";
local KEY_D_SHADOW_BLADE = "vco_skv_sni_dilemma_shadow_meets_blade";
local REQUIRED_EFFECT_TAILS = { "inf_aug_13", "inf_aug_14", "mon_aug_13", "mon_aug_14" };
local REQUIRED_ESHIN_TARGETS = { "wh_main_dwf_karak_izor", "wh2_main_def_hag_graef", "wh3_main_nur_poxmakers_of_nurgle" };
local REQUIRED_ESHIN_ACTIONS = 13;

-- TRIGGERS --

local function trigger_throt_dilemma()
	cm:trigger_dilemma(FACTION_MDR_KEY, KEY_D_HARVEST);
end

local function trigger_tretch_dilemma()
	cm:trigger_dilemma(FACTION_RICTUS_KEY, KEY_D_AMBUSH_EVERPEAK);
end

local function trigger_snikch_dilemma()
	cm:trigger_dilemma(FACTION_ESH_KEY, KEY_D_SHADOW_BLADE);
end

local function trigger_tretch_quest()
    cm:trigger_mission(FACTION_RICTUS_KEY, "vco_custom_quest_tretch", true);
end

local function trigger_tretch_throt_ghoritch_quest()
    cm:trigger_mission(FACTION_MDR_KEY, "vco_custom_quest_throt_ghoritch", true);
end

-- CHECKS --
function trigger_throt_twilight_quest()
    local landmark_one_completed = cm:get_saved_value("vco_skv_mdr_landmark_one_completed");
    local landmark_two_completed = cm:get_saved_value("vco_skv_mdr_landmark_two_completed");
    local landmark_three_completed = cm:get_saved_value("vco_skv_mdr_landmark_three_completed");
    local landmark_four_completed = cm:get_saved_value("vco_skv_mdr_landmark_four_completed");

    if landmark_one_completed and landmark_two_completed and landmark_three_completed and landmark_four_completed then
    cm:trigger_mission(FACTION_MDR_KEY, "vco_wh2_dlc16_qb_skv_final_battle_throt", true);
    end
end

local function add_mdr_augment_unlocked(effect)
	for _, effect_tail in ipairs(REQUIRED_EFFECT_TAILS) do
		if effect:record_key() == "wh2_dlc16_throt_flesh_lab_" .. effect_tail then
			cm:set_saved_value("vco_skv_mdr_" .. effect_tail .. "_unlocked", true);
		end
	end
end

local function check_mdr_all_augments_unlocked(effect)
	for _, effect_tail in ipairs(REQUIRED_EFFECT_TAILS) do
		if not cm:get_saved_value("vco_skv_mdr_" .. effect_tail .. "_unlocked") then
			return;
		end
	end

	vco:complete_mission(FACTION_MDR_KEY, "vco_skv_mld_augments");
end

-- LISTENERS --
local function add_listeners()
	core:add_listener(
		"vco_skv_moulder_effect_purchased",
		"UnitEffectPurchased",
		function(context)
			local faction = context:unit():faction();
			return faction:is_human() and
				faction:name() == FACTION_MDR_KEY;
		end,
		function(context)
			add_mdr_augment_unlocked(context:effect());
			check_mdr_all_augments_unlocked(context:effect());
		end,
		true
	);

	core:add_listener(
		"vco_skv_mdr_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_MDR_KEY and
				context:mission():mission_issuer_record_key() == "KING_KAZADOR";
		end,
		trigger_throt_dilemma,
		false
	);

	core:add_listener(
		"vco_skv_tre_2_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_RICTUS_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_tretch_dilemma,
		false
	);

	core:add_listener(
		"vco_skv_sni_1_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_ESH_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_snikch_dilemma,
		false
	);

    core:add_listener(
    "vco_skv_tre_warpstone_meteor",
    "BuildingCompleted",
    function(context)
        local building = context:building();
        return not cm:get_saved_value("vco_skv_tre_warpstone_meteor_already_happened") and
        building:name() == "vco_landmark_tretch_tower_gorgoth" and
        building:faction():name() == FACTION_RICTUS_KEY and
        building:faction():is_human() and
        not building:faction():is_null_interface();
    end,
    function()
      cm:set_saved_value("vco_skv_tre_warpstone_meteor_already_happened", true);
      trigger_tretch_quest();
    end,
    true
    );

    core:add_listener(
    "vco_skv_mdr_landmark_one",
    "BuildingCompleted",
    function(context)
        local building = context:building();
        return not cm:get_saved_value("vco_skv_mdr_landmark_one_completed") and
        building:name() == "vco_moulder_dukhyls_forest_brood_warren" and
        building:faction():name() == FACTION_MDR_KEY and
        building:faction():is_human() and
        not building:faction():is_null_interface();
    end,
    function()
      cm:set_saved_value("vco_skv_mdr_landmark_one_completed", true);
      trigger_throt_twilight_quest();
    end,
    false
    );

    core:add_listener(
    "vco_skv_mdr_landmark_two",
    "BuildingCompleted",
    function(context)
        local building = context:building();
        return not cm:get_saved_value("vco_skv_mdr_landmark_two_completed") and
        building:name() == "vco_moulder_warpstone_pillar" and
        building:faction():name() == FACTION_MDR_KEY and
        building:faction():is_human() and
        not building:faction():is_null_interface();
    end,
    function()
      cm:set_saved_value("vco_skv_mdr_landmark_two_completed", true);
      trigger_throt_twilight_quest();
    end,
    false
    );

    core:add_listener(
    "vco_skv_mdr_landmark_three",
    "BuildingCompleted",
    function(context)
        local building = context:building();
        return not cm:get_saved_value("vco_skv_mdr_landmark_three_completed") and
        building:name() == "vco_moulder_forest_flesh_pits" and
        building:faction():name() == FACTION_MDR_KEY and
        building:faction():is_human() and
        not building:faction():is_null_interface();
    end,
    function()
      cm:set_saved_value("vco_skv_mdr_landmark_three_completed", true);
      trigger_throt_twilight_quest();
    end,
    false
    );

    core:add_listener(
    "vco_skv_mdr_landmark_four",
    "BuildingCompleted",
    function(context)
        local building = context:building();
        return not cm:get_saved_value("vco_skv_mdr_landmark_four_completed") and
        building:name() == "vco_moulder_laurelorn_broken_heart" and
        building:faction():name() == FACTION_MDR_KEY and
        building:faction():is_human() and
        not building:faction():is_null_interface();
    end,
    function()
      cm:set_saved_value("vco_skv_mdr_landmark_four_completed", true);
      trigger_throt_twilight_quest();
    end,
    false
    );

	core:add_listener(
		"vco_skv_mdr_ghoritch_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_MDR_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_tretch_throt_ghoritch_quest,
		false
	);

	core:add_listener(
		"vco_def_snikch_final_battle",
		"RitualCompletedEvent",
		function(context)
			return not cm:get_saved_value("vco_def_snikch_final_battle_already_happened")
			and context:performing_faction():name() == FACTION_ESH_KEY 
			and context:performing_faction():is_human()
			and context:ritual():ritual_key():starts_with("wh2_dlc14_eshin_actions_mortal_empires_mission_4");
		end,
    function()
      cm:set_saved_value("vco_def_snikch_final_battle_already_happened", true);
    cm:trigger_mission(FACTION_ESH_KEY, "vco_wh2_dlc14_qb_skv_final_battle_snikch", true);
    end,
		false
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();