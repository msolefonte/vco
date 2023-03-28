local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_BOR_KEY = "wh_main_brt_bordeleaux";
local FACTION_REP_KEY = "wh2_dlc14_brt_chevaliers_de_lyonesse";
local KEY_CS_ALBERIC = "wh_dlc07_brt_alberic";
local KEY_D_MANANNS_FAVOUR = "vco_brt_alb_dilemma_mananns_favour";
local KEY_D_ETERNAL_WAR = "vco_brt_rep_dilemma_eternal_war";


-- TRIGGERS --

local function trigger_alb_dilemma()
	cm:trigger_dilemma(FACTION_BOR_KEY, KEY_D_MANANNS_FAVOUR);
end

local function trigger_rep_dilemma()
	cm:trigger_dilemma(FACTION_REP_KEY, KEY_D_ETERNAL_WAR);
end

-- CHECKS --

local function check_alberic_vow_mission(character)
	if character:character_subtype(KEY_CS_ALBERIC) then
		vco:complete_mission(FACTION_BOR_KEY, "vco_brt_alberic_vow");
	end
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_brt_grail_vow_completed",
		"ScriptEventBretonniaGrailVowCompleted",
		function(context)
			local faction = context:character():faction();
			return faction:is_human() and
				faction:name() == FACTION_BOR_KEY;
		end,
		function(context)
			check_alberic_vow_mission(context:character());
		end,
		true
	);

	core:add_listener(
		"vco_brt_rep_2_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_REP_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_rep_dilemma,
		false
	);


	core:add_listener(
		"vco_brt_man_3_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_BOR_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_alb_dilemma,
		false
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
