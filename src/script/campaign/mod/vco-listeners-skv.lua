local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_ESH_KEY = "wh2_main_skv_clan_eshin";
local FACTION_MDR_KEY = "wh2_main_skv_clan_moulder";
local KEY_D_HARVEST = "vco_skv_mdr_dilemma_ultimate_harvest";
local REQUIRED_EFFECT_TAILS = { "inf_aug_13", "inf_aug_14", "mon_aug_13", "mon_aug_14" };
local REQUIRED_ESHIN_TARGETS = { "wh_main_dwf_karak_izor", "wh2_main_def_hag_graef", "wh3_main_nur_poxmakers_of_nurgle" };
local REQUIRED_ESHIN_ACTIONS = 13;

-- TRIGGERS --

local function trigger_throt_dilemma()
	cm:trigger_dilemma(FACTION_MDR_KEY, KEY_D_HARVEST);
end

local function add_mdr_augment_unlocked(effect)
	for _, effect_tail in ipairs(REQUIRED_EFFECT_TAILS) do
		if effect:record_key() == "wh2_dlc16_throt_flesh_lab_" .. effect_tail then
			cm:set_saved_value("vco_skv_mdr_" .. effect_tail .. "_unlocked", true);
		end
	end
end

-- CHECKS --

local function check_mdr_all_augments_unlocked(effect)
	for _, effect_tail in ipairs(REQUIRED_EFFECT_TAILS) do
		if not cm:get_saved_value("vco_skv_mdr_" .. effect_tail .. "_unlocked") then
			return;
		end
	end

	vco:complete_mission(FACTION_MDR_KEY, "vco_skv_mld_augments");
end

local function check_snikch_battle(defender)
	vco:log("CharacterCompletedBattle: Check Function Entry");

	local defender_faction = defender:faction():name();
	if not (
		defender_faction == "wh_main_dwf_karak_izor" or
			defender_faction == "wh2_main_def_hag_graef" or
			defender_faction == "wh3_main_nur_poxmakers_of_nurgle"
	) then
		vco:log("Defender Faction not of interest: " .. defender_faction);
		return;
	end

	local defender_is_faction_leader = defender:is_faction_leader();
	if not defender_is_faction_leader then
		vco:log("Defender Faction of interest: " .. defender_faction .. ", but general is not faction leader.");
		return;
	end

	vco:log("Marking mission complete for script key 'vco_skv_esh_" .. defender_faction .. "_leader_defeated'.");
	vco:complete_mission(FACTION_ESH_KEY, "vco_skv_esh_" .. defender_faction .. "_leader_defeated");
end

local function check_snikch_targets()
	for _, faction_name in ipairs(REQUIRED_ESHIN_TARGETS) do
		vco:log("check_snikch_targets: Checking if Target Faction (" .. faction_name .. ") is dead.");
		local faction_data = cm:get_faction(faction_name, false);
		local faction_is_dead = faction_data:is_dead();
		if faction_is_dead then
			vco:log("check_snikch_targets: Target Faction (" .. faction_name .. ") dead: true");
			vco:complete_mission(FACTION_ESH_KEY, "vco_skv_esh_" .. faction_name .. "_leader_defeated");
		end
	end
end

local function check_snikch_eshin_actions()
	local eshin_actions_count = cm:get_saved_value("vco_snikch_eshin_actions_count") or 0;
	eshin_actions_count = eshin_actions_count +1;
	cm:set_saved_value("vco_snikch_eshin_actions_count", eshin_actions_count);

	if eshin_actions_count < REQUIRED_ESHIN_ACTIONS then
		vco:set_mission_text(
			"vco_skv_esh_eshin_actions",
			"vco_skv_esh_1_service_of_the_grand_nightlord_2_" .. eshin_actions_count
		);
	else
		vco:set_mission_text(
			"vco_skv_esh_eshin_actions",
			"vco_skv_esh_1_service_of_the_grand_nightlord_2_13"
		);
		vco:complete_mission(FACTION_ESH_KEY, "vco_skv_esh_eshin_actions");
	end
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
		"vco_skv_esh_snikch_battle_completed",
		"CharacterCompletedBattle",
		function(context)
			local character = context:character();
			local faction = context:character():faction();
			return faction:is_human() and
				faction:name() == FACTION_ESH_KEY and
				character:is_faction_leader();
		end,
		function(context)
			check_snikch_battle(context:pending_battle():defender());
		end,
		true
	);

	core:add_listener(
		"vco_skv_esh_snikch_target_faction_wiped_out",
		"FactionTurnStart",
		function(context)
			return context:faction():is_human() and
				context:faction():name() == FACTION_ESH_KEY;
		end,
		check_snikch_targets,
		true
	);

	core:add_listener(
		"vco_skv_esh_snikch_eshin_actions",
		"RitualCompletedEvent",
		function(context)
			return context:performing_faction():name() == FACTION_ESH_KEY and
				context:ritual():ritual_key():starts_with("wh2_dlc14_eshin_actions_");
		end,
		check_snikch_eshin_actions,
		true
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
