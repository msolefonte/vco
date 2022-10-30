local vco = core:get_static_object("vco");

local FACTION_TWP_KEY = "wh3_main_cth_the_western_provinces";
local REQUIRED_NUM_CARAVANS_COMPLETED_VICTORY = 9;
local REQUIRED_TOTAL_GOODS_MOVED_VICTORY = 13140;

-- CHECKS --

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
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
