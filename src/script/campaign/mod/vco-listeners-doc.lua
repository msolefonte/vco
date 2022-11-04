local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local REQUIRED_CORRUPTED_REGIONS_VICTORY = 100;

-- CHECKS --

local function check_mono_gods_the_great_game(faction_key, corruption_key)
	local corrupted_regions = vlc.corruption:count_regions_where_corruption_is_highest(corruption_key);

	if corrupted_regions < REQUIRED_CORRUPTED_REGIONS_VICTORY then
		vco:set_mission_text("vco_" .. faction_key .. "_the_great_game",
			"vco_the_great_game_completed_" .. corrupted_regions);
	else
		vco:set_mission_text("vco_" .. faction_key .. "_the_great_game", "vco_the_great_game_completed");
		vco:complete_mission(faction_key, "vco_" .. faction_key .. "_the_great_game");
	end
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_mono_gods_faction_turn_start",
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

			check_mono_gods_the_great_game(context:faction():name(), corruption_key);
		end,
		true
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
