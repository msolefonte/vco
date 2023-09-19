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

local function recolor_and_resize_dummy_missions()
	local objectives_vc_uic = find_uicomponent(core:get_ui_root(), "objectives_screen", "subpanel_victory_conditions");
	local objectives_list_uic = find_uicomponent(objectives_vc_uic, "list_holder", "listview", "list_clip", "list_box");
	if objectives_list_uic ~= false then
		for i = 0, objectives_list_uic:ChildCount() - 1 do
			local condition_uic = UIComponent(objectives_list_uic:Find(i));
			if condition_uic:Id() == 'condition' then
				local dy_condition_uic = find_uicomponent(condition_uic, "dy_condition");
				if string.sub(dy_condition_uic:GetStateText(), 1, 7) == "<dummy>" then
					local position_x, position_y = dy_condition_uic:Position();
					dy_condition_uic:SetState('active');
					dy_condition_uic:SetCanResizeWidth(true);
					dy_condition_uic:MoveTo(position_x - 16, position_y);
					dy_condition_uic:SetStateText(dy_condition_uic:GetStateText():sub(8));
					dy_condition_uic:Resize(616, dy_condition_uic:Height());
					find_uicomponent(condition_uic, "bullet_point"):SetVisible(false);
				end
			end
		end
	end
end

local function recolor_and_resize_dummy_missions_side()
	local objectives_list_uic = find_uicomponent(core:get_ui_root(), "events", "event_layouts", "mission_review",
		"quest_details", "quest_list_details", "tab_details_child", "objectives", "template_objectives");
	if objectives_list_uic ~= false then
		for i = 0, objectives_list_uic:ChildCount() - 1 do
			local child_uic = UIComponent(objectives_list_uic:Find(i));
			if string.sub(child_uic:Id(), 1, 27) == 'CcoCampaignMissionObjective' then
				local dy_objective_uic = find_uicomponent(child_uic, "dy_objective");
				if string.sub(dy_objective_uic:GetStateText(), 1, 7) == "<dummy>" then
					dy_objective_uic:SetStateText(dy_objective_uic:GetStateText():sub(8));
				end
			end
		end
	end
end

local function recolor_and_resize_dummy_missions_listeners()
	core:add_listener(
		"vco_objectives_panel_route_opened",
		"PanelOpenedCampaign",
		function(context)
			return context.string == "objectives_screen";
		end,
		recolor_and_resize_dummy_missions,
		true
	);

	core:add_listener(
		"vco_objectives_panel_route_clicked",
		"ComponentLClickUp",
		function(context)
			return string.sub(context.string, 1, 17) == "vco_victory_type_";
		end,
		recolor_and_resize_dummy_missions,
		true
	);

	core:add_listener(
		"vco_objectives_side_notification_open",
		"PanelOpenedCampaign",
		function(context)
			return context.string == "events";
		end,
		recolor_and_resize_dummy_missions_side,
		true
	);
end



-- LOADER --

local function load_campaigns()
	if vco:are_vco_main_mod_routes_enabled() then
		if vco:get_config("campaign_immortal_empires_enabled") then
			vco:trigger_custom_missions("vco-ie");
		end

		if vco:get_config("campaign_realms_of_chaos_enabled") then
			vco:trigger_custom_missions("vco-roc");
		end
	end
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(load_campaigns);
	add_fix_objectives_panel_bug_listener();
	recolor_and_resize_dummy_missions_listeners();
end

main();