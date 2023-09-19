local vco = core:get_static_object("vco");
local vlc = core:get_static_object("vco-lib-commons");

local FACTION_LZD_MAZ_KEY = "wh2_main_lzd_hexoatl";
local FACTION_LZD_NAK_KEY = "wh2_dlc13_lzd_spirits_of_the_jungle";

local FACTION_LZD_MAZ_UNITY_1 = "wh2_dlc12_lzd_cult_of_sotek";
local FACTION_LZD_MAZ_UNITY_3 = "wh2_dlc13_lzd_defenders_of_the_great_plan";
local FACTION_LZD_MAZ_UNITY_4 = "wh2_dlc13_lzd_spirits_of_the_jungle";
local FACTION_LZD_MAZ_UNITY_6 = "wh2_dlc16_lzd_wardens_of_the_living_pools";
local FACTION_LZD_MAZ_UNITY_7 = "wh2_dlc17_lzd_oxyotl";
local FACTION_LZD_MAZ_UNITY_8 = "wh2_main_lzd_itza";
local FACTION_LZD_MAZ_UNITY_9 = "wh2_main_lzd_last_defenders";
local FACTION_LZD_MAZ_UNITY_10 = "wh2_main_lzd_sentinels_of_xeti";
local FACTION_LZD_MAZ_UNITY_11 = "wh2_main_lzd_southern_sentinels";
local FACTION_LZD_MAZ_UNITY_12 = "wh2_main_lzd_teotiqua";
local FACTION_LZD_MAZ_UNITY_13 = "wh2_main_lzd_tlaqua";
local FACTION_LZD_MAZ_UNITY_14 = "wh2_main_lzd_tlaxtlan";
local FACTION_LZD_MAZ_UNITY_15 = "wh2_main_lzd_xlanhuapec";
local FACTION_LZD_MAZ_UNITY_16 = "wh2_main_lzd_zlatan";
local FACTION_LZD_MAZ_UNITY_17 = "wh3_main_lzd_tepoks_spawn";

local KEY_D_UNITY_SPIRIT = "vco_lzd_maz_dilemma_unity_spirit";
local KEY_D_WU_XING_COMPASS = "vco_lzd_nak_dilemma_wu_xing_compass";



-- TRIGGERS --
local function trigger_maz_dilemma()
	cm:trigger_dilemma(FACTION_LZD_MAZ_KEY, KEY_D_UNITY_SPIRIT);
end

local function trigger_nak_dilemma()
	cm:trigger_dilemma(FACTION_LZD_NAK_KEY, KEY_D_WU_XING_COMPASS);
end

local function trigger_nakai_quest()
    cm:trigger_mission(FACTION_LZD_NAK_KEY, "wh2_dlc13_qb_lzd_final_battle_nakai", true);
end

local function lzd_maz_vassalise()
	cm:force_make_vassal(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_1);
	cm:force_make_vassal(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_3);
	cm:force_make_vassal(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_4);
	cm:force_make_vassal(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_6);
	cm:force_make_vassal(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_7);
	cm:force_make_vassal(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_8);
	cm:force_make_vassal(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_9);
	cm:force_make_vassal(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_10);
	cm:force_make_vassal(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_11);
	cm:force_make_vassal(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_12);
	cm:force_make_vassal(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_13);
	cm:force_make_vassal(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_14);
	cm:force_make_vassal(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_15);
	cm:force_make_vassal(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_16);
	cm:force_make_vassal(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_17);
end

local function lzd_maz_confederate()
	cm:force_confederation(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_1);
	cm:force_confederation(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_3);
	cm:force_confederation(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_4);
	cm:force_confederation(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_6);
	cm:force_confederation(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_7);
	cm:force_confederation(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_8);
	cm:force_confederation(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_9);
	cm:force_confederation(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_10);
	cm:force_confederation(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_11);
	cm:force_confederation(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_12);
	cm:force_confederation(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_13);
	cm:force_confederation(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_14);
	cm:force_confederation(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_15);
	cm:force_confederation(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_16);
	cm:force_confederation(FACTION_LZD_MAZ_KEY, FACTION_LZD_MAZ_UNITY_17);
end

local function trigger_maz_dilemma_choice_made(choice)
	if choice == 0 then
		lzd_maz_vassalise();
	elseif choice == 1 then
		lzd_maz_confederate();
	end
end

-- LISTENERS --

local function add_listeners()
	core:add_listener(
		"vco_lzd_maz_1_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_LZD_MAZ_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_maz_dilemma,
		false
	);

    core:add_listener(
    "vco_lzd_nakai_battle_for_itza",
    "CharacterRankUp",
    function(context)
 local character = context:character()
        return not cm:get_saved_value("vco_lzd_nak_quest_battle_already_happened") and
         character:faction():name() == FACTION_LZD_NAK_KEY and character:rank() >= 40
    end,
    function()
      cm:set_saved_value("vco_lzd_nak_quest_battle_already_happened", true);
      trigger_nakai_quest();
    end,
    false
    );

	core:add_listener(
		"vco_lzd_nak_1_completed",
		"MissionSucceeded",
		function(context)
			return context:faction():name() == FACTION_LZD_NAK_KEY and
				context:mission():mission_issuer_record_key() == "MUFFIN_MAN";
		end,
		trigger_nak_dilemma,
		false
	);

	core:add_listener(
		"vco_lzd_maz_dilemma_choice_made",
		"DilemmaChoiceMadeEvent",
		function(context)
			return context:dilemma() == KEY_D_UNITY_SPIRIT;
		end,
		function(context)
			trigger_maz_dilemma_choice_made(context:choice());
		end,
		true
	);
end

-- MAIN --

local function main()
	cm:add_first_tick_callback(add_listeners);
end

main();
