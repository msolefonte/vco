local vco = core:get_static_object("vco");

local FACTION_BOR_KEY = "wh_main_brt_bordeleaux";
local KEY_CS_ALBERIC = "wh_dlc07_brt_alberic";

-- CHECKS --

local function check_alberic_vow_mission(character)
	if character:character_subtype(KEY_CS_ALBERIC) then
		vco:complete_mission(FACTION_BOR_KEY, "vco_brt_alberic_vow");
	end
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_brt_grail_vow_completed",
		"ScriptEventBretonniaGrailVowCompleted",
		function(context)
			local faction = context:character():faction();
			return faction:is_human() and
				faction:name() == FACTION_BOR_KEY;
		end,
		function(context)
			check_alberic_vow_mission(context:character());
		end,
		true
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
