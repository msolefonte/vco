local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_KEY = "wh3_main_sla_seducers_of_slaanesh";
local NUMBER_GIFTS_REQUIRED = 40;
local NUMBER_CULTS_REQUIRED = 20;

-- CHECKS --

local function check_nka_gifts_given()
	local gifts_given = cm:get_saved_value("gifts_given_" .. FACTION_KEY) or 0;

	local gifts_given_incremented = gifts_given + 1;
	cm:set_saved_value("gifts_given_" .. FACTION_KEY, gifts_given_incremented);

	if gifts_given_incremented < NUMBER_GIFTS_REQUIRED then
		vco:set_mission_text("vco_" .. FACTION_KEY .. "_gifts_given", "vco_sla_gifts_given_" .. gifts_given_incremented);
	else
		vco:set_mission_text("vco_" .. FACTION_KEY .. "_gifts_given", "vco_sla_gifts_given_completed");
		vco:complete_mission(FACTION_KEY, "vco_" .. FACTION_KEY .. "_gifts_given");
	end
end

local function check_nka_cult_building()
	local cult_buildings_completed = cm:get_saved_value("cult_buildings_built_" .. FACTION_KEY) or 0;

	local cult_buildings_completed_incremented = cult_buildings_completed + 1;
	cm:set_saved_value("cult_buildings_built_" .. FACTION_KEY, cult_buildings_completed_incremented);

	if cult_buildings_completed_incremented < NUMBER_CULTS_REQUIRED then
		vco:set_mission_text("vco_" .. FACTION_KEY .. "_cults_established", "vco_sla_cults_established_" .. cult_buildings_completed_incremented);
	else
		vco:set_mission_text("vco_" .. FACTION_KEY .. "_cults_established", "vco_sla_cults_established_completed");
		vco:complete_mission(FACTION_KEY, "vco_" .. FACTION_KEY .. "_cults_established");
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
		check_nka_gifts_given,
		true
	);

	core:add_listener(
		"vco_sla_nka_cult_building_constructed",
		"ForeignSlotBuildingCompleteEvent",
		function(context)
			return context:slot_manager():faction():is_human() and
				context:slot_manager():faction():name() == FACTION_KEY
		end,
		check_nka_cult_building,
		true
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
