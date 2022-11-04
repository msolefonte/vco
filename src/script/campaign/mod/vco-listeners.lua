local vco = core:get_static_object("vco");

-- LISTENERS --

local function add_listeners()
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
