local vco = core:get_static_object("vco");

-- LOADER --

local function load_campaigns()
	if not vco:are_default_campaigns_disabled() then
		if vco:get_config("campaign_immortal_empires_enabled") then
			vco:trigger_custom_missions("vco-ie");
		end
	end
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(load_campaigns);
end

main();