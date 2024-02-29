local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_DAE_KEY = "wh3_main_dae_daemon_prince";
local FACTION_NKARI_KEY = "wh3_main_sla_seducers_of_slaanesh";
local FACTION_KUGATH_KEY = "wh3_main_nur_poxmakers_of_nurgle";
local FACTION_SKARBRAND_KEY = "wh3_main_kho_exiles_of_khorne";
local FACTION_KAIROS_KEY = "wh3_main_tze_oracles_of_tzeentch";

local REQUIRED_CORRUPTED_REGIONS_VICTORY = 50;

-- CHECKS --

local function check_mono_gods_the_great_game(faction_key, corruption_key)
	local corrupted_regions = vlc.corruption:count_regions_where_corruption_is_highest(corruption_key);

	if corrupted_regions < REQUIRED_CORRUPTED_REGIONS_VICTORY then
		vco:set_mission_text("vcogg_" .. faction_key .. "_the_great_game",
			"vcogg_the_great_game_completed_" .. corrupted_regions);
	else
		vco:set_mission_text("vcogg_" .. faction_key .. "_the_great_game", "vcogg_the_great_game_completed");
		vco:complete_mission(faction_key, "vcogg_" .. faction_key .. "_the_great_game");
	end
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_mono_gods_faction_turn_start",
		"FactionTurnStart",
		function(context)
			return context:faction():is_human() and
			       context:faction():name() == FACTION_NKARI_KEY or FACTION_KUGATH_KEY or FACTION_SKARBRAND_KEY or FACTION_KAIROS_KEY;
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

	core:add_listener(
		"vco_dae_daemon_prince_ascend_ritual_completed",
		"RitualCompletedEvent",
		function(context)
			local ritual_key = context:ritual():ritual_key();
			return context:performing_faction():is_human() and
				context:performing_faction():name() == FACTION_DAE_KEY and
				(ritual_key == "wh3_main_ritual_dae_ascend_khorne" or
					ritual_key == "wh3_main_ritual_dae_ascend_nurgle" or
					ritual_key == "wh3_main_ritual_dae_ascend_slaanesh" or
					ritual_key == "wh3_main_ritual_dae_ascend_tzeentch" or
					ritual_key == "wh3_main_ritual_dae_ascend_undivided");
		end,
		function()
			vco:complete_mission(FACTION_DAE_KEY, "vco_dae_daemon_prince_ascend_ritual");
		end,
		true
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
