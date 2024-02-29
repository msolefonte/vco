local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_TWILIGHT_KEY = "wh2_dlc16_wef_sisters_of_twilight";


-- TRIGGERS --

local function trigger_twilight_quest()
    cm:trigger_mission(FACTION_TWILIGHT_KEY, "vco_wh2_dlc16_qb_wef_final_battle_sisters", true);
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_wef_twilight_final_battle",
		"RitualCompletedEvent",
		function(context)
			return not cm:get_saved_value("vco_wef_twilight_final_battle_already_happened")
			and context:performing_faction():name() == FACTION_TWILIGHT_KEY 
			and context:performing_faction():is_human()
			and context:ritual():ritual_key():starts_with("wh2_dlc16_ritual_rebirth_naggarond_glade");
		end,
    function()
      cm:set_saved_value("vco_wef_twilight_final_battle_already_happened", true);
    cm:trigger_mission(FACTION_TWILIGHT_KEY, "vco_wh2_dlc16_qb_wef_final_battle_sisters", true);
    end,
		false
	);

    core:add_listener(
    "fffffffff",
    "CharacterRankUp",
    function(context)
 local character = context:character()
        return not cm:get_saved_value("ffffffffffff") and
        not character:faction():is_null_interface() and
        character:faction():is_human() and
         character:faction():name() == FACTION_TWILIGHT_KEY and character:rank() >= 2
    end,
    function()
      cm:set_saved_value("ffffffffffff", true);
      trigger_twilight_quest();
    end,
    false
    );

end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
