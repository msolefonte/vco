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
gc:add_element("Play_wh2_dlc10_DEF_Hellebron_QB_Final_Battle_004", "vco_eight_peaks_belegar_speech_01", "gc_orbit_90_medium_commander_back_right_extreme_high_01", 10800, false, false, false);
gc:add_element(nil, "vco_eight_peaks_belegar_speech_02", "gc_orbit_90_medium_commander_front_close_low_01", 3000, false, false, false);
gc:add_element(nil,nil, nil, 1000, true, true, false);


gb:set_cutscene_during_deployment(true);

---------------------------
----HARD SCRIPT VERSION----
---------------------------
gb:set_objective_on_message("battle_started", "wh_main_qb_objective_attack_defeat_army");



-------ARMY SETUP-------
ga_ai_eight_peaks_foe_1 = gb:get_army(gb:get_non_player_alliance_num(), "enemy_army_2");
ga_ai_eight_peaks_foe_2 = gb:get_army(gb:get_non_player_alliance_num(), "enemy_army_3");
ga_ai_thorgrim_ally = gb:get_army(gb:get_player_alliance_num(), "player_ally");
