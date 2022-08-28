local vco = {};
local config = {
  logging_enabled = true
};

-- GENERIC --

function vco:get_config(config_key)
  out("[wolfy][vco] Getting config for key " .. config_key);
  local config_value = config[config_key];

  if get_mct then
    local mct = get_mct();
    if mct ~= nil then
      out("[wolfy][vco] Reading value from MCT");
      local mod_cfg = mct:get_mod_by_key("wolfy_vco");
      local opt_key = mod_cfg:get_option_by_key(config_key);

      if not opt_key then
        out("[wolfy][vco] ERROR Reading value from MCT: Config key not valid");
      else
        config_value = opt_key:get_finalized_value()
      end
    end
  end

  out("[wolfy][vco] Config value read: " .. config_key .. " -> " .. tostring(config_value));
  return config_value;
end


function vco:log(str)
  if self:get_config("logging_enabled") then
    out("[wolfy][vco] " .. str);
  end
end

-- VICTORY CONDITIONS OVERHAUL --

function vco:is_multiplayer_campaign()
    return #cm:get_human_factions() > 1;
end

function vco:trigger_faction_missions(mod_name, faction_key)
    local campaign_name = cm:get_campaign_name();
    local status, missions = pcall(require, "script/"..mod_name.."/"..campaign_name.."/"..faction_key.."/missions")
;
    
    if status then
        self:log("Triggering custom missions for " .. faction_key .. " (mod: " .. mod_name .. ")");
        for _, mission in ipairs(missions) do
            if mission and mission ~= "" then
                if self:is_multiplayer_campaign() then
                    self:log("Campaign is multiplayer")
                    mission = mission:gsub("wh_main_long_victory", "wh3_main_mp_victory");
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
        local faction_key = cm:get_local_faction_name();
        cm:trigger_custom_mission_from_string(faction_key, mission);
    end
end

core:add_static_object("vco", vco);
