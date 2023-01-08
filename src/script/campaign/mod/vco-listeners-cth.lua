local vco = core:get_static_object("vco");

local FACTION_TNP_KEY = "wh3_main_cth_the_northern_provinces";
local FACTION_TWP_KEY = "wh3_main_cth_the_western_provinces";
local KEY_D_SISTER_RESCUED = "vco_cth_miao_dilemma_sister_rescued";
local REQUIRED_NUM_CARAVANS_COMPLETED_VICTORY = 9;
local REQUIRED_TOTAL_GOODS_MOVED_VICTORY = 13140;
local REQUIRED_GROSS_INCOME = 25000;


-- TRIGGERS --

local function trigger_miao_dilemma()
	cm:trigger_dilemma(FACTION_TNP_KEY, KEY_D_SISTER_RESCUED);
end

-- CHECKS --
local function check_gol_gross_income(target_faction)
	local current_income = target_faction:income();

	if current_income < REQUIRED_GROSS_INCOME then
		local percentage_completed = math.floor(current_income / REQUIRED_GROSS_INCOME * 100)
		vco:set_mission_text("vco_ogr_gre_1_rich_walk",
			"vco_ogr_gre_1_rich_walk_" .. percentage_completed);
	else
		vco:set_mission_text("vco_ogr_gre_1_rich_walk", "vco_ogr_gre_1_rich_walk");
		vco:complete_mission(FACTION_TWP_KEY, "vco_ogr_gre_1_rich_walk");
	end
end

local function check_caravans_completed(faction_key)
	local num_caravans_completed = cm:get_saved_value("caravans_completed_" .. faction_key) or 0;

	if num_caravans_completed < REQUIRED_NUM_CARAVANS_COMPLETED_VICTORY then
		vco:set_mission_text("vco_cth_the_western_provinces_caravans",
			"vco_cth_the_western_provinces_caravans_" .. num_caravans_completed);
	else
		vco:set_mission_text("vco_cth_the_western_provinces_caravans", "vco_cth_the_western_provinces_caravans");
		vco:complete_mission(FACTION_TWP_KEY, "vco_cth_the_western_provinces_caravans");
	end
end

local function check_goods_moved(faction_key)
	local total_goods_moved = cm:get_saved_value("caravan_goods_moved_" .. faction_key) or 0;

	if total_goods_moved < REQUIRED_TOTAL_GOODS_MOVED_VICTORY then
		local percentage_completed = math.floor(total_goods_moved / REQUIRED_TOTAL_GOODS_MOVED_VICTORY * 100)
		vco:set_mission_text("vco_cth_the_western_provinces_goods",
			"vco_cth_the_western_provinces_goods_" .. percentage_completed);
	else
		vco:set_mission_text("vco_cth_the_western_provinces_goods", "vco_cth_the_western_provinces_goods");
		vco:complete_mission(FACTION_TWP_KEY, "vco_cth_the_western_provinces_goods");
	end
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_cth_twp_faction_turn_end",
		"FactionTurnEnd",
		function(context)
			return context:faction():name() == FACTION_TWP_KEY and
				context:faction():is_human();
		end,
		function(context)
			check_caravans_completed(context:faction():name());
			check_goods_moved(context:faction():name());
		end,
		true
	);

	core:add_listener(
		"vco_ogr_gol_faction_turn_start",
		"FactionTurnStart",
		function(context)
			return context:faction():is_human() and
				context:faction():name() == FACTION_TWP_KEY;
		end,
		function(context)
			check_gol_gross_income(context:faction());
		end,
		true
	);


	core:add_listener(
		"vco_cth_miao_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_TNP_KEY and
				context:mission():mission_issuer_record_key() == "KING_KAZADOR";
		end,
		trigger_miao_dilemma,
		false
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
