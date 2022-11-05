local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_KEY = "wh3_main_sla_seducers_of_slaanesh";
local NUMBER_GIFTS_REQUIRED = 20;

-- CHECKS --

local function check_nka_gifts_given(faction_name)
	local gifts_given = cm:get_saved_value("gifts_given_" .. faction_name) or 0;
	
	local gifts_given_incremented = gifts_given + 1;
	cm:set_saved_value("gifts_given_" .. faction_name, gifts_given_incremented);
	
	if gifts_given_incremented < NUMBER_GIFTS_REQUIRED then
		vco:set_mission_text("vco_" .. faction_name .. "_gifts_given", "vco_sla_gifts_given_" .. gifts_given_incremented);
	else
		vco:set_mission_text("vco_" .. faction_name .. "_gifts_given", "vco_sla_gifts_given_completed");
		vco:complete_mission(faction_name, "vco_" .. faction_name .. "_gifts_given");
	end
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_sla_nka_gifts_given",
		"FactionCharacterTagAddedEvent",
		function(context)
			return context:tagging_faction():is_human() and
				context:tagging_faction():name() == FACTION_KEY
		end,
		function(context)
			check_nka_gifts_given(context:tagging_faction():name());
		end,
		true
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
