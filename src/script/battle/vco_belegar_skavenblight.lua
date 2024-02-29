load_script_libraries();

local gc = generated_cutscene:new(true);

gb = generated_battle:new(
	false,                                      -- screen starts black
	false,                                      -- prevent deployment for player
	false,                                      	-- prevent deployment for ai
	function() gb:start_generated_cutscene(gc) end, 	-- intro cutscene function
	false                                      	-- debug mode
);

gc:add_element(nil, nil, "qb_louen_errantry_war_chaos_01", 6000, false, false, false);
gc:add_element("Play_wh2_dlc10_DEF_Hellebron_QB_Final_Battle_003", "vco_thorgrim_skavenblight_speech_01", "gc_orbit_90_medium_commander_back_right_extreme_high_01", 5000, false, false, false);
gc:add_element(nil, "vco_thorgrim_skavenblight_speech_02", "gc_slow_army_pan_front_left_to_front_right_far_high_01", 8000, false, false, false);
gc:add_element(nil, "vco_thorgrim_skavenblight_speech_03", "gc_orbit_90_medium_commander_front_close_low_01", 8800, false, false, false);
gc:add_element(nil, "vco_thorgrim_skavenblight_speech_04", "gc_orbit_90_medium_commander_back_left_extreme_high_01", 9000, false, false, false);
gc:add_element(nil,nil, nil, 1000, true, true, false);


gb:set_cutscene_during_deployment(true);

---------------------------
----HARD SCRIPT VERSION----
---------------------------
gb:set_objective_on_message("battle_started", "wh_main_qb_objective_attack_defeat_army");
gb:queue_help_on_message("spawn_reinforcements", "vco_belegar_custom_quest_ungrim_arrival_message");


-------ARMY SETUP-------
ga_ai_skaven_garrison = gb:get_army(gb:get_non_player_alliance_num(), "enemy_army");
ga_ai_skaven_garrison_1 = gb:get_army(gb:get_non_player_alliance_num(), "enemy_army_2");
ga_ai_thorgrim_ally = gb:get_army(gb:get_player_alliance_num(), "player_ally");
ga_ai_ungrims_slayers = gb:get_army(gb:get_player_alliance_num(), "reinforcements");




-------REINFORCEMENTS-------
ga_ai_skaven_garrison:message_on_casualties("spawn_reinforcements", 0.2);
ga_ai_ungrims_slayers:reinforce_on_message("spawn_reinforcements");
ga_ai_ungrims_slayers:rush_on_message("spawn_reinforcements",5000);
