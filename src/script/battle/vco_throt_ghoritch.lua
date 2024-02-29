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
gc:add_element("Play_wh2_dlc10_DEF_Hellebron_QB_Final_Battle_002", "vco_throt_archaon_speech_01", "gc_orbit_90_medium_commander_back_right_extreme_high_01", 15000, false, false, false);
gc:add_element(nil, "vco_throt_archaon_speech_02", "gc_slow_army_pan_front_left_to_front_right_far_high_01", 10000, false, false, false);
gc:add_element(nil, "vco_throt_archaon_speech_03", "gc_orbit_90_medium_commander_front_close_low_01", 6000, false, false, false);
gc:add_element(nil, "vco_throt_archaon_speech_04", "gc_orbit_90_medium_commander_back_left_extreme_high_01", 8000, false, false, false);
gc:add_element(nil,nil, nil, 1000, true, true, false);


gb:set_cutscene_during_deployment(true);

---------------------------
----HARD SCRIPT VERSION----
---------------------------
gb:set_objective_on_message("battle_started", "wh_main_qb_objective_attack_defeat_army");
--gb:queue_help_on_message("spawn_reinforcements", "vco_throt_custom_quest_archaon_message_champions_come");


-------ARMY SETUP-------
ga_ai_archaons_warhost = gb:get_army(gb:get_non_player_alliance_num(), "lzd_maz");
ga_ai_godslayers_legions = gb:get_army(gb:get_non_player_alliance_num(), "lzd_teh");
--ga_ai_champions_of_chaos_1 = gb:get_army(gb:get_non_player_alliance_num(), "enemy_reinforcements");
--ga_ai_champions_of_chaos_2 = gb:get_army(gb:get_non_player_alliance_num(), "enemy_reinforcements_2");



-------REINFORCEMENTS-------
--ga_ai_archaons_warhost:message_on_casualties("spawn_reinforcements", 0.2);
--ga_ai_champions_of_chaos_1:reinforce_on_message("spawn_reinforcements");
--ga_ai_champions_of_chaos_1:rush_on_message("spawn_reinforcements",5000);
--ga_ai_champions_of_chaos_2:reinforce_on_message("spawn_reinforcements");
--ga_ai_champions_of_chaos_2:rush_on_message("spawn_reinforcements",5000);