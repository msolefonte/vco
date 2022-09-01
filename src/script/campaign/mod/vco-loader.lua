local vco = core:get_static_object("vco");

-- LOADER --

local function load_campaigns()
	if vco:get_config("campaign_immortal_empires_enabled") then
		vco:trigger_custom_missions("vco-ie");
	end
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(load_campaigns);
end

main();