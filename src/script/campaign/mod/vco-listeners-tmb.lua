local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_ARKHAN_KEY = "wh2_dlc09_tmb_followers_of_nagash";
local FACTION_VOL_NAGASH_KEY = "wh3_main_emp_cult_of_sigmar";
local FACTION_MAN_NAGASH_KEY = "wh_main_vmp_vampire_counts";

local KEY BOOK_OF_NAGASH_KEY_ARKHAN = "vco_script_key_book_of_nagash_arkhan";
local KEY BOOK_OF_NAGASH_KEY_VOLKMAR = "vco_script_key_book_of_nagash_volkmar";
local KEY BOOK_OF_NAGASH_KEY_MANNFRED = "vco_script_key_book_of_nagash_mannfred";
local KEY_BOOK_NAGASH_1 = "wh2_dlc09_books_of_nagash_1";
local KEY_BOOK_NAGASH_2 = "wh2_dlc09_books_of_nagash_2";
local KEY_BOOK_NAGASH_3 = "wh2_dlc09_books_of_nagash_3";
local KEY_BOOK_NAGASH_4 = "wh2_dlc09_books_of_nagash_4";
local KEY_BOOK_NAGASH_5 = "wh2_dlc09_books_of_nagash_5";
local KEY_BOOK_NAGASH_6 = "wh2_dlc09_books_of_nagash_6";
local KEY_BOOK_NAGASH_7 = "wh2_dlc09_books_of_nagash_7";
local KEY_BOOK_NAGASH_8 = "wh2_dlc09_books_of_nagash_8";

-- CHECKS --

function check_all_books_of_nagash_collected()
    local book1_completed = cm:get_saved_value("vco_book_of_nagash_1_collected");
    local book2_completed = cm:get_saved_value("vco_book_of_nagash_2_collected");
    local book3_completed = cm:get_saved_value("vco_book_of_nagash_3_collected");
    local book4_completed = cm:get_saved_value("vco_book_of_nagash_4_collected");
    local book5_completed = cm:get_saved_value("vco_book_of_nagash_5_collected");
    local book6_completed = cm:get_saved_value("vco_book_of_nagash_6_collected");
    local book7_completed = cm:get_saved_value("vco_book_of_nagash_7_collected");
    local book8_completed = cm:get_saved_value("vco_book_of_nagash_8_collected");

    if book1_completed and book2_completed and book3_completed  and book4_completed  
    and book5_completed  and book6_completed  and book7_completed  and book8_completed then
	vco:complete_mission(FACTION_ARKHAN_KEY, BOOK_OF_NAGASH_KEY_ARKHAN);
    vco:complete_mission(FACTION_VOL_NAGASH_KEY, BOOK_OF_NAGASH_KEY_VOLKMAR);
    vco:complete_mission(FACTION_MAN_NAGASH_KEY, BOOK_OF_NAGASH_KEY_MANNFRED);
    end
end


-- LISTENERS --

local function add_listeners()
core:add_listener(
    "vco_arkhan_book_of_nagash_collected_1",
    "MissionSucceeded",
		function(context)
			return not context:faction():is_null_interface() and
				context:faction():is_human() and
				context:mission():mission_record_key() == KEY_BOOK_NAGASH_1;
    end,
    function()
        cm:set_saved_value("vco_book_of_nagash_1_collected", true);
        check_all_books_of_nagash_collected();
    end,
    false
);

core:add_listener(
    "vco_arkhan_book_of_nagash_collected_2",
    "MissionSucceeded",
		function(context)
			return not context:faction():is_null_interface() and
				context:faction():is_human() and
				context:mission():mission_record_key() == KEY_BOOK_NAGASH_2;
    end,
    function()
        cm:set_saved_value("vco_book_of_nagash_2_collected", true);
        check_all_books_of_nagash_collected();
    end,
    false
);

core:add_listener(
    "vco_arkhan_book_of_nagash_collected_3",
    "MissionSucceeded",
		function(context)
			return not context:faction():is_null_interface() and
				context:faction():is_human() and
				context:mission():mission_record_key() == KEY_BOOK_NAGASH_3;
    end,
    function()
        cm:set_saved_value("vco_book_of_nagash_3_collected", true);
        check_all_books_of_nagash_collected();
    end,
    false
);

core:add_listener(
    "vco_arkhan_book_of_nagash_collected_4",
    "MissionSucceeded",
		function(context)
			return not context:faction():is_null_interface() and
				context:faction():is_human() and
				context:mission():mission_record_key() == KEY_BOOK_NAGASH_4;
    end,
    function()
        cm:set_saved_value("vco_book_of_nagash_4_collected", true);
        check_all_books_of_nagash_collected();
    end,
    false
);

core:add_listener(
    "vco_arkhan_book_of_nagash_collected_5",
    "MissionSucceeded",
		function(context)
			return not context:faction():is_null_interface() and
				context:faction():is_human() and
				context:mission():mission_record_key() == KEY_BOOK_NAGASH_2;
    end,
    function()
        cm:set_saved_value("vco_book_of_nagash_5_collected", true);
        check_all_books_of_nagash_collected();
    end,
    false
);

core:add_listener(
    "vco_arkhan_book_of_nagash_collected_6",
    "MissionSucceeded",
		function(context)
			return not context:faction():is_null_interface() and
				context:faction():is_human() and
				context:mission():mission_record_key() == KEY_BOOK_NAGASH_6;
    end,
    function()
        cm:set_saved_value("vco_book_of_nagash_6_collected", true);
        check_all_books_of_nagash_collected();
    end,
    false
);

core:add_listener(
    "vco_arkhan_book_of_nagash_collected_7",
    "MissionSucceeded",
		function(context)
			return not context:faction():is_null_interface() and
				context:faction():is_human() and
				context:mission():mission_record_key() == KEY_BOOK_NAGASH_7;
    end,
    function()
        cm:set_saved_value("vco_book_of_nagash_7_collected", true);
        check_all_books_of_nagash_collected();
    end,
    false
);

core:add_listener(
    "vco_arkhan_book_of_nagash_collected_8",
    "MissionSucceeded",
		function(context)
			return not context:faction():is_null_interface() and
				context:faction():is_human() and
				context:mission():mission_record_key() == KEY_BOOK_NAGASH_8;
    end,
    function()
        cm:set_saved_value("vco_book_of_nagash_8_collected", true);
        check_all_books_of_nagash_collected();
    end,
    false
);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
