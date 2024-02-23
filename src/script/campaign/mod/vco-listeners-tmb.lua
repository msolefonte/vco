local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_ARK_KEY = "wh2_dlc09_tmb_followers_of_nagash";
local FB_ARK_KEY = "vco_wh2_dlc09_qb_tmb_final_battle_arkhan";

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
            local book_number = string.sub(context:mission():mission_record_key(), -1);
            vlc.nagash_books:add(FACTION_ARK_KEY, book_number);
            vlc.nagash_books:check_all_books_collected_and_trigger_final_battle(FACTION_ARK_KEY, 1, FB_ARK_KEY);
        end,
        true
    );
end

-- MAIN --

local function main()
    cm:add_first_tick_callback(add_listeners);
end


main();