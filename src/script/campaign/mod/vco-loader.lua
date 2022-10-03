local vco = core:get_static_object("vco");

-- UI --

local function fix_objectives_panel_bug()
	local objectives_vc_uic = find_uicomponent(core:get_ui_root(), "objectives_screen", "subpanel_victory_conditions");
	local victory_tree_uic = find_uicomponent(objectives_vc_uic, "tree_holder", "victory_type_tree", "slot_parent");
	if victory_tree_uic ~= false then
		for i = 0, victory_tree_uic:ChildCount() - 1 do
			local victory_type_uic = UIComponent(victory_tree_uic:Find(i))
			if string.sub(victory_type_uic:Id(), 1, 3) == "vco" then
				victory_type_uic:SimulateLClick();
				break;
			end
		end
	end
end

local function add_fix_objectives_panel_bug_listener()
	core:add_listener(
		"vco_objectives_panel_victory_conditions_clicked",
		"ComponentLClickUp",
		function(context)
			return context.string == "tab_victory_conditions";
		end,
		fix_objectives_panel_bug,
		true
	);
end

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
	add_fix_objectives_panel_bug_listener();
end

main();