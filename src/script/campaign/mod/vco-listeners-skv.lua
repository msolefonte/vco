local vco = core:get_static_object("vco");

local FACTION_MDR_KEY = "wh2_main_skv_clan_moulder";
local KEY_D_HARVEST = "vco_skv_mdr_dilemma_ultimate_harvest";
local REQUIRED_EFFECT_TAILS = { "inf_aug_13", "inf_aug_14", "mon_aug_13", "mon_aug_14" };

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
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
