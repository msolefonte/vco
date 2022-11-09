local vco = core:get_static_object("vco");

local FACTION_GOL_KEY = "wh3_main_ogr_goldtooth";
local FACTION_MAW_KEY = "wh3_main_ogr_disciples_of_the_maw";
local KEY_F_MEAT = "offered_to_the_great_maw";
local KEY_PR_MEAT = "wh3_main_ogr_meat";
local REQUIRED_GROSS_INCOME = 25000;
local REQUIRED_MEAT_OFFERED_VICTORY = 200;

-- CHECKS --

local function check_gol_gross_income(target_faction)
	local current_income = target_faction:income();

	if current_income < REQUIRED_GROSS_INCOME then
		local percentage_completed = math.floor(current_income / REQUIRED_GROSS_INCOME * 100)
		vco:set_mission_text("vco_ogr_gre_1_rich_walk",
			"vco_ogr_gre_1_rich_walk_" .. percentage_completed);
	else
		vco:set_mission_text("vco_ogr_gre_1_rich_walk", "vco_ogr_gre_1_rich_walk");
		vco:complete_mission(FACTION_GOL_KEY, "vco_ogr_gre_1_rich_walk");
	end
end

local function check_maw_the_maw_that_walks(context)
	local total_meat_offered = context:factor_spent();

	if total_meat_offered < REQUIRED_MEAT_OFFERED_VICTORY then
		local percentage_completed = math.floor(total_meat_offered / REQUIRED_MEAT_OFFERED_VICTORY * 100)
		vco:set_mission_text("vco_ogr_the_maw_that_walks", "vco_ogr_the_maw_that_walks_" .. percentage_completed);
	else
		vco:set_mission_text("vco_ogr_the_maw_that_walks", "vco_ogr_the_maw_that_walks");
		vco:complete_mission(context:faction():name(), "vco_ogr_the_maw_that_walks");
	end
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_ogr_gol_faction_turn_start",
		"FactionTurnStart",
		function(context)
			return context:faction():is_human() and
				context:faction():name() == FACTION_GOL_KEY;
		end,
		function(context)
			check_gol_gross_income(context:faction());
		end,
		true
	);

	core:add_listener(
		"vco_ogr_maw_meat_resource_changed",
		"ScriptEventTrackedPooledResourceChanged",
		function(context)
			return context:faction():is_human() and
				context:faction():name() == FACTION_MAW_KEY and
				context:resource():key() == KEY_PR_MEAT and
				context:factor():key() == KEY_F_MEAT;
		end,
		function(context)
			check_maw_the_maw_that_walks(context);
		end,
		true
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
