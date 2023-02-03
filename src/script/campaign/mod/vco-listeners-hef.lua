local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_TYR_KEY = "wh2_main_hef_eataine";
local FACTION_SOT_KEY = "wh2_dlc16_wef_sisters_of_twilight";
local FACTION_ORI_KEY = "wh_dlc05_wef_wood_elves";
local FACTION_LAU_KEY = "wh3_main_wef_laurelorn";
local FACTION_ORE_KEY = "wh2_main_wef_bowmen_of_oreon";
local FACTION_TOR_KEY = "wh_dlc05_wef_torgovann";
local FACTION_WYD_KEY = "wh_dlc05_wef_wydrioth";


-- TRIGGERS --

local function trigger_tyr_vassals()
	cm:force_make_vassal(FACTION_TYR_KEY, FACTION_SOT_KEY);
    cm:force_make_vassal(FACTION_TYR_KEY, FACTION_ORI_KEY);
    cm:force_make_vassal(FACTION_TYR_KEY, FACTION_LAU_KEY);
    cm:force_make_vassal(FACTION_TYR_KEY, FACTION_ORE_KEY);
    cm:force_make_vassal(FACTION_TYR_KEY, FACTION_TOR_KEY);
    cm:force_make_vassal(FACTION_TYR_KEY, FACTION_WYD_KEY);
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_hef_rou_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_TYR_KEY and
				context:mission():mission_issuer_record_key() == "KING_KAZADOR";
		end,
		trigger_tyr_vassals,
		false
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
