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

local function check_nka_cult_building(context)
	vco:log("VCO | Seducers of Slaanesh | Event | Building Completed");
	
	-- TODO this event type doesn't have much on it, figure out what we need
	local faction_name = context:slot_manager():faction():name();

	local cult_buildings_completed = cm:get_saved_value("cult_buildings_built_" .. faction_name) or 0;
	vco:log("VCO | Seducers of Slaanesh | Value | cult_buildings_built_" .. faction_name .. " | = " .. cult_buildings_completed);

	local building_completed_slot_type = context:building():slot():type();
	local building_completed_slot_name = context:building():slot():name();
	vco:log("VCO | Seducers of Slaanesh | Value | Building Completed Type | " .. building_completed_slot_type);
	vco:log("VCO | Seducers of Slaanesh | Value | Building Completed Name | " .. building_completed_slot_name);
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
	
	core:add_listener(
		"vco_sla_nka_cult_building_constructed",
		"ForeignSlotBuildingCompleteEvent",
		function(context)
			return context:slot_manager():faction():is_human() and
				context:slot_manager():faction():name() == FACTION_KEY
		end,
		function(context)
			check_nka_cult_building(context);
		end,
		true
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
