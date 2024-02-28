local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_TAUROX_KEY = "wh2_dlc17_bst_taurox";
local FACTION_MAL_KEY = "wh2_dlc17_bst_malagor";

local KEY_PR_BST_RUINATION = "bst_ruination";

local KEY_D_HARBINGER = "vco_bst_mal_dilemma_harbinger";

-- CHECKS --

-- TRIGGERS --

local function trigger_mal_dilemma()
	cm:trigger_dilemma(FACTION_MAL_KEY, KEY_D_HARBINGER);
end

local function trigger_taurox_quest()
    cm:trigger_mission(FACTION_TAUROX_KEY, "vco_wh3_main_ie_qb_bst_final_battle_taurox", true);
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_bst_mal_1_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_MAL_KEY and
				context:mission():mission_issuer_record_key() == "KING_KAZADOR";
		end,
		trigger_mal_dilemma,
		false
	);

	core:add_listener(
		"vco_bst_taurox_final_battle",
		"PooledResourceChanged",
		function(context)
			return not context:faction():is_null_interface() and
				context:faction():is_human() and
				context:faction():name() == FACTION_TAUROX_KEY and
				context:resource():key() == KEY_PR_BST_RUINATION and
                context:resource():value() >= 500;
		end,
		trigger_taurox_quest,
		true
	);

end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();