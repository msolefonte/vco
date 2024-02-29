local vco = {};
local config = {
    campaign_immortal_empires_enabled = true,
    campaign_realms_of_chaos_enabled = true,
    vco_main_mod_routes_enabled = true,
    logging_enabled = true
};

-- GENERIC --

function vco:forced_log(str, disabled)
	if not disabled then
		out("[wolfy][vco] " .. str);
	end
end

function vco:get_config(config_key, disable_log)
	self:forced_log("Getting config for key \"" .. config_key .. "\"", disable_log);
	local config_value = config[config_key];

	if get_mct then
		local mct = get_mct();
		if mct ~= nil then
			local mod_cfg = mct:get_mod_by_key("wolfy_vco");
			local opt_key = mod_cfg:get_option_by_key(config_key);

			if not opt_key then
				self:forced_log("ERROR Reading value from MCT: Config key not valid", disable_log);
			else
				config_value = opt_key:get_finalized_setting();
			end
		end
	end

	self:forced_log("Config value read: " .. config_key .. " -> " .. tostring(config_value), disable_log);
	return config_value;
end


function vco:log(str)
	if self:get_config("logging_enabled", true) then
		out("[wolfy][vco] " .. str);
	end
end

-- CAMPAIGN --

-- @deprecated
function vco:disable_default_campaigns()
	config["vco_main_mod_routes_enabled"] = false;
end

-- @deprecated
function vco:are_default_campaigns_disabled()
	return not config["vco_main_mod_routes_enabled"];
end

function vco:disable_vco_main_mod_routes()
	config["vco_main_mod_routes_enabled"] = false;
end

function vco:are_vco_main_mod_routes_enabled()
	return config["vco_main_mod_routes_enabled"];
end

function vco:is_multiplayer_campaign()
	return #cm:get_human_factions() > 1;
end

-- ROUTES --

function vco:trigger_faction_missions(mod_name, faction_key)
	local campaign_name = cm:get_campaign_name();
	local status, missions = pcall(require, "script/"..mod_name.."/"..campaign_name.."/"..faction_key.."/missions");

	if status then
		self:log("Triggering custom missions for " .. faction_key .. " (mod: " .. mod_name .. ")");
		for _, mission in ipairs(missions) do
			if mission and mission ~= "" then
				if self:is_multiplayer_campaign() then
					self:log("Campaign is multiplayer")
					mission = mission:gsub("vco_route_victory", "wh3_main_mp_victory");
				end
				cm:trigger_custom_mission_from_string(faction_key, mission);
			end
		end
	end
end

function vco:trigger_custom_missions(mod_name)
	if cm:is_new_game() then
		self:log("Triggering custom missions (mod: " .. mod_name .. ")");
		for _, faction_key in ipairs(cm:get_human_factions()) do
			self:trigger_faction_missions(mod_name, faction_key);
		end
	end
end

function vco:trigger_mission_for_current_faction(mission)
	if cm:is_new_game() then
		for _, faction_key in ipairs(cm:get_human_factions()) do
			cm:trigger_custom_mission_from_string(faction_key, mission);
		end
	end
end

-- OBJECTIVES --

function vco:complete_mission(faction_name, script_key)
	if self:is_multiplayer_campaign() then
		self:log("Completing multiplayer mission objective (wh3_main_mp_victory) for " .. faction_name .. " using script key: " .. script_key);
		cm:complete_scripted_mission_objective(faction_name, "wh3_main_mp_victory", script_key, true);
		return;
	end

	self:log("Completing singleplayer mission objective (vco_route_victory) for " .. faction_name .. " using script key: " .. script_key);
	cm:complete_scripted_mission_objective(faction_name, "vco_route_victory", script_key, true);
end

function vco:set_mission_text(script_key, text_key)
	if self:is_multiplayer_campaign() then
		self:log("Setting multiplayer mission text (wh3_main_mp_victory) for script: " .. script_key .. " from text key: " .. text_key);
		cm:set_scripted_mission_text("wh3_main_mp_victory", script_key, "mission_text_text_" .. text_key);
		return;
	end

	self:log("Setting singleplayer mission text (vco_route_victory) for script: " .. script_key .. " from text key: " .. text_key);
	cm:set_scripted_mission_text("vco_route_victory", script_key, "mission_text_text_" .. text_key);
end

-- EXPORT --

core:add_static_object("vco", vco);