local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_KEY = "wh2_dlc17_bst_taurox";

local FACTION_MAL_KEY = "wh2_dlc17_bst_malagor";
local KEY_D_HARBINGER = "vco_bst_mal_dilemma_harbinger";

-- CHECKS --

-- TRIGGERS --

local function trigger_mal_dilemma()
	cm:trigger_dilemma(FACTION_MAL_KEY, KEY_D_HARBINGER);
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

end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();