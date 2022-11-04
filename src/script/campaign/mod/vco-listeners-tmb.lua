local vlc = core:get_static_object("vco-lib-commons");

local FACTION_ARK_ID = "tmb_ark";
local FACTION_ARK_KEY = "wh2_dlc09_tmb_followers_of_nagash";

-- CHECKS --

local function check_ark_collected_books(mission)
	vlc.nagash_books:check_generic_all_books_collected(FACTION_ARK_ID, mission, 9);
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_tmb_ark_book_collected",
		"MissionSucceeded",
		function(context)
			return context:faction():is_human() and
				context:faction():name() == FACTION_ARK_KEY and
				context:mission():mission_record_key():sub(1,26) == "wh2_dlc09_books_of_nagash_";
		end,
		function(context)
			vlc.nagash_books:add(FACTION_ARK_ID, 9);
			check_ark_collected_books(context:mission());
		end,
		true
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
