local vco = core:get_static_object("vco");

-- COMMON --

local function is_faction_military_ally_or_destroyed(player_faction, target_faction_key)
	local target_faction = cm:get_faction(target_faction_key);
	return target_faction and (target_faction:is_dead() or target_faction:military_allies_with(player_faction));
end

local function is_faction_vassal_or_destroyed(player_faction, target_faction_key, consider_military_allies)
	local target_faction = cm:get_faction(target_faction_key);
	if target_faction then
		if target_faction:is_dead() or target_faction:is_vassal_of(player_faction) then
			return true;
		end

		if consider_military_allies then
			local player_faction_military_allies = player_faction:factions_military_allies_with();
			for i = 0, player_faction_military_allies:num_items() - 1 do
				if target_faction:is_vassal_of(player_faction_military_allies:item_at(i)) then
					return true;
				end
			end
		end
	end

	return false;
end

local function is_faction_under_your_control(player_faction, target_faction_key, consider_military_allies)
	return is_faction_vassal_or_destroyed(player_faction, target_faction_key, consider_military_allies) or
		is_faction_military_ally_or_destroyed(player_faction, target_faction_key);
end

local function count_regions_with_highest_corruption(corruption_key)
	local regions_count = 0;

	local province_list = cm:model():world():province_list();
	for i = 0, province_list:num_items() - 1 do
		local current_province = province_list:item_at(i);
		for _, region in model_pairs(current_province:regions()) do
			local highest_corruption_in_region = cm:get_highest_corruption_in_region(region) or '';
			if highest_corruption_in_region == corruption_key then
				regions_count = regions_count + 1;
			end
		end
	end

	return regions_count;
end

-- CHECKS --

local function check_vco_brt_bordeleaux_alberic_vow(character)
	if character:character_subtype("wh_dlc07_brt_alberic") then
		vco:complete_mission("wh_main_brt_bordeleaux", "vco_brt_alberic_vow");
	end
end

local function check_vco_cth_the_western_provinces_caravans(faction_key)
	local REQUIRED_NUM_CARAVANS_COMPLETED_VICTORY = 9;
	local num_caravans_completed = cm:get_saved_value("caravans_completed_" .. faction_key) or 0;

	if num_caravans_completed < REQUIRED_NUM_CARAVANS_COMPLETED_VICTORY then
		vco:set_mission_text("vco_cth_the_western_provinces_caravans",
										 		 "vco_cth_the_western_provinces_caravans_" .. num_caravans_completed);
	else
		vco:set_mission_text("vco_cth_the_western_provinces_caravans", "vco_cth_the_western_provinces_caravans");
		vco:complete_mission("wh3_main_cth_the_western_provinces", "vco_cth_the_western_provinces_caravans");
	end
end

local function check_vco_cth_the_western_provinces_goods(faction_key)
	local REQUIRED_TOTAL_GOODS_MOVED_VICTORY = 13140;
	local total_goods_moved = cm:get_saved_value("caravan_goods_moved_" .. faction_key) or 0;

	if total_goods_moved < REQUIRED_TOTAL_GOODS_MOVED_VICTORY then
		local percentage_completed = math.floor(total_goods_moved / REQUIRED_TOTAL_GOODS_MOVED_VICTORY * 100)
		vco:set_mission_text("vco_cth_the_western_provinces_goods",
												 "vco_cth_the_western_provinces_goods_" .. percentage_completed);
	else
		vco:set_mission_text("vco_cth_the_western_provinces_goods", "vco_cth_the_western_provinces_goods");
		vco:complete_mission("wh3_main_cth_the_western_provinces", "vco_cth_the_western_provinces_goods");
	end
end

 -- TODO RENAME AFTER UNIFICATION
local function check_vco_daemons_of_chaos_the_great_game(faction_key, corruption_key)
	local REQUIRED_CORRUPTED_REGIONS_VICTORY = 100;
	local corrupted_regions = count_regions_with_highest_corruption(corruption_key);

	if corrupted_regions < REQUIRED_CORRUPTED_REGIONS_VICTORY then
		vco:set_mission_text("vco_" .. faction_key .. "_the_great_game",
												 "vco_the_great_game_completed_" .. corrupted_regions);
	else
		vco:set_mission_text("vco_" .. faction_key .. "_the_great_game", "vco_the_great_game_completed");
		vco:complete_mission(faction_key, "vco_" .. faction_key .. "_the_great_game");
	end
end

local function check_vco_ogr_goldtooth_gross_income(target_faction)
	local REQUIRED_CORRUPTED_REGIONS_VICTORY = 25000;
	local current_income = target_faction:income();

	if current_income < REQUIRED_CORRUPTED_REGIONS_VICTORY then
		local percentage_completed = math.floor(current_income / REQUIRED_CORRUPTED_REGIONS_VICTORY * 100)
		vco:set_mission_text("vco_ogr_gre_1_rich_walk",
												 "vco_ogr_gre_1_rich_walk_" .. percentage_completed);
	else
		vco:set_mission_text("vco_ogr_gre_1_rich_walk", "vco_ogr_gre_1_rich_walk");
		vco:complete_mission("wh3_main_ogr_goldtooth", "vco_ogr_gre_1_rich_walk");
	end
end

local function check_vco_skv_mdr_all_augments_unlocked(effect)
	local REQUIRED_EFFECT_TAILS = {"inf_aug_13", "inf_aug_14", "mon_aug_13", "mon_aug_14"};

	for _, effect_tail in ipairs(REQUIRED_EFFECT_TAILS) do
		if effect:record_key() == "wh2_dlc16_throt_flesh_lab_" .. effect_tail then
			cm:set_saved_value("vco_skv_mdr_" .. effect_tail .. "_unlocked", true);
		end
	end

	for _, effect_tail in ipairs(REQUIRED_EFFECT_TAILS) do
		if not cm:get_saved_value("vco_skv_mdr_" .. effect_tail .. "_unlocked") then
			return;
		end
	end

	vco:complete_mission("wh2_main_skv_clan_moulder", "vco_skv_mld_augments");
end

local function check_vco_tmb_ark_all_books_collected(mission)
  local REQUIRED_MISSION_KEY_TAILS = {"1", "2", "3", "4", "5", "6", "7", "8"};
  vco:log("TMB | ARK | MissionSucceeded | Check");
  vco:log(mission);

  for _, mission_key_tail in ipairs(REQUIRED_MISSION_KEY_TAILS) do
  	if mission:mission_record_key() == "wh2_dlc09_books_of_nagash_" .. mission_key_tail then
  		cm:set_saved_value("vco_tmb_ark_book_" .. mission_key_tail .. "_collected", true);
  	end
  end

  for _, mission_key_tail in ipairs(REQUIRED_MISSION_KEY_TAILS) do
  	if not cm:get_saved_value("vco_tmb_ark_book_" .. mission_key_tail .. "_collected") then
  		return;
  	end
  end

  vco:complete_mission("wh2_dlc09_followers_of_nagash", "vco_tmb_ark_books")
end

 -- TODO RENAME AFTER UNIFICATION
local function check_vco_ogre_kingdoms_the_maw_that_walks(context)
	local REQUIRED_MEAT_OFFERED_VICTORY = 200;
	local total_meat_offered = context:factor_spent();

	if total_meat_offered < REQUIRED_MEAT_OFFERED_VICTORY then
		local percentage_completed = math.floor(total_meat_offered / REQUIRED_MEAT_OFFERED_VICTORY * 100)
		vco:set_mission_text("vco_ogr_the_maw_that_walks", "vco_ogr_the_maw_that_walks_" .. percentage_completed);
	else
		vco:set_mission_text("vco_ogr_the_maw_that_walks", "vco_ogr_the_maw_that_walks");
		vco:complete_mission(context:faction():name(), "vco_ogr_the_maw_that_walks");
	end
end

-- PAYLOADS --

local function vco_def_cop_disable_slaanesh_units()
	cm:add_event_restricted_unit_record_for_faction(
		"wh3_main_sla_mon_fiends_of_slaanesh_0",
		"wh2_main_def_cult_of_pleasure"
	);
	cm:add_event_restricted_unit_record_for_faction(
		"wh3_main_sla_mon_keeper_of_secrets_0",
		"wh2_main_def_cult_of_pleasure"
	);
end

local function vco_def_cop_enable_slaanesh_units()
	cm:remove_event_restricted_unit_record_for_faction(
		"wh3_main_sla_mon_fiends_of_slaanesh_0",
		"wh2_main_def_cult_of_pleasure"
	);
	cm:remove_event_restricted_unit_record_for_faction(
		"wh3_main_sla_mon_keeper_of_secrets_0",
		"wh2_main_def_cult_of_pleasure"
	);
end

local function vco_ksl_ort_disable_luminark()
	cm:add_event_restricted_unit_record_for_faction(
		"wh_main_emp_veh_luminark_of_hysh_0",
		"wh3_main_ksl_the_great_orthodoxy"
	);
end

local function vco_ksl_ort_enable_luminark()
	cm:remove_event_restricted_unit_record_for_faction(
		"wh_main_emp_veh_luminark_of_hysh_0",
		"wh3_main_ksl_the_great_orthodoxy"
	);
end

-- LISTENERS --

local function add_listeners()
	vco:log("Adding listeners");

	vco:log("- Bretonnia listeners");
	core:add_listener(
		"vco_brt_alberic_vow_check",
		"ScriptEventBretonniaGrailVowCompleted",
		function(context)
			local faction = context:character():faction();
			return faction:is_human() and faction:name() == "wh_main_brt_bordeleaux";
		end,
		function(context)
			check_vco_brt_bordeleaux_alberic_vow(context:character());
		end,
		true
	);

	vco:log("- Cathay listeners");
	core:add_listener(
		"vco_cth_all_checks",
		"FactionTurnEnd",
		function(context)
			return context:faction():name() == "wh3_main_cth_the_western_provinces" and context:faction():is_human();
		end,
		function(context)
			check_vco_cth_the_western_provinces_caravans(context:faction():name());
			check_vco_cth_the_western_provinces_goods(context:faction():name());
		end,
		true
	);

	vco:log("- Daemons of Chaos listeners");
	core:add_listener(
		"vco_doc_the_great_game_check",
		"FactionTurnStart",
		function(context)
			return context:faction():is_human();
		end,
		function(context)
			local corruption_key = "";
			if context:faction():culture() == "wh3_main_kho_khorne" then
				corruption_key = "wh3_main_corruption_khorne";
			elseif context:faction():culture() == "wh3_main_nur_nurgle" then
				corruption_key = "wh3_main_corruption_nurgle";
			elseif context:faction():culture() == "wh3_main_sla_slaanesh" then
				corruption_key = "wh3_main_corruption_slaanesh";
			elseif context:faction():culture() == "wh3_main_tze_tzeentch" then
				corruption_key = "wh3_main_corruption_tzeentch";
			end

			check_vco_daemons_of_chaos_the_great_game(context:faction():name(), corruption_key);
		end,
		true
	);

	vco:log("- Dark Elves listeners");
	core:add_listener(
		"vco_def_cop_first_turn_start",
		"FactionTurnStart",
		function(context)
			return cm:model():turn_number() == 1 and context:faction():is_human() and
				context:faction():name() == "wh2_main_def_cult_of_pleasure";
		end,
		vco_def_cop_disable_slaanesh_units,
		true
	);

	core:add_listener(
		"vco_def_cop_route_2_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == "wh2_main_def_cult_of_pleasure"
				and context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		vco_def_cop_enable_slaanesh_units,
		true
	)
	
	vco:log("- Kislev listeners");
	core:add_listener(
		"vco_ksl_ort_first_turn_start",
		"FactionTurnStart",
		function(context)
			return cm:model():turn_number() == 1 and context:faction():is_human() and
				context:faction():name() == "wh3_main_ksl_the_great_orthodoxy";
		end,
		vco_ksl_ort_disable_luminark,
		true
	);

	core:add_listener(
		"vco_ksl_ort_route_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == "wh3_main_ksl_the_great_orthodoxy"
				and context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		vco_ksl_ort_enable_luminark,
		true
	)

	vco:log("- Ogre Kingdoms listeners");
	core:add_listener(
		"vco_ogr_goldtooth_faction_turn_start",
		"FactionTurnStart",
		function(context)
			return context:faction():is_human() and context:faction():name() == "wh3_main_ogr_goldtooth";
		end,
		function(context)
			check_vco_ogr_goldtooth_gross_income(context:faction());
		end,
		true
	);

	core:add_listener(
		"vco_ogr_meat_checks",
		"ScriptEventTrackedPooledResourceChanged",
		function(context)
			return context:faction():is_human() and context:faction():name() == "wh3_main_ogr_disciples_of_the_maw" and
				context:resource():key() == "wh3_main_ogr_meat" and context:factor():key() == "offered_to_the_great_maw";
		end,
		function(context)
			check_vco_ogre_kingdoms_the_maw_that_walks(context);
		end,
		true
	);

	vco:log("- Skaven listeners");
	core:add_listener(
		"vco_skv_moulder_effect_purchased",
		"UnitEffectPurchased",
		function(context)
			local faction = context:unit():faction();
			return faction:is_human() and faction:name() == "wh2_main_skv_clan_moulder";
		end,
		function(context)
			check_vco_skv_mdr_all_augments_unlocked(context:effect());
		end,
		true
	);

	vco:log("- Tomb Kings listeners");
	core:add_listener(
	  "vco_tmb_arkhan_book_collected",
	  "MissionSucceeded",
	  function(context)
	  	vco:log("TMB | ARK | Listener | Evaluating");
	  	vco:log(context:faction():name());
	  	vco:log(context:faction():is_human());
	  	return context:faction():name() == "wh2_dlc09_followers_of_nagash" and context:faction():is_human();
	  end,
	  function(context)
	  	vco:log("TMB | ARK | Listener | Executing");
	  	vco:log(context:mission());
	  	check_vco_tmb_ark_all_books_collected(context:mission());
	  end,
	  true
	);

	vco:log("- Completing dummies");
	core:add_listener(
		"vco_dummy_missions_check",
		"FactionTurnStart",
		function(context)
			return context:faction():is_human();
		end,
		function(context)
			vco:complete_mission(context:faction():name(), "vco_dummy");
		end,
		true
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
