local vco = {};

function vco:get_faction_keys()
    return ipairs(cm:get_human_factions());
end

function vco:trigger_faction_missions(mod_name, faction_key)
    local campaign_name = cm:get_campaign_name();
    local script_path = "script/" .. mod_name .. "/" .. campaign_name .. "/" .. faction_key .. "/missions";

    local status, missions = pcall(require, script_path);
    if status then
        for _, mission in ipairs(missions) do
            if mission and mission ~= "" then
                cm:trigger_custom_mission_from_string(faction_key, mission);
            end
        end
    end
end

function vco:trigger_custom_missions(mod_name)
    if cm:is_new_game() then
        for _, faction_key in vco:get_faction_keys() do
            vco:trigger_faction_missions(mod_name, faction_key);
        end
    end
end

function vco:trigger_missions_for_current_faction(missions)
  if cm:is_new_game() then
    local faction_key = cm:get_local_faction_name();
    cm:trigger_custom_mission_from_string(faction_key, mission);
  end
end

core:add_static_object("vco", vco);
