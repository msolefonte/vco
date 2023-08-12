load_script_libraries();

local gc = generated_cutscene:new(true);

gb = generated_battle:new(
	false,                                      -- screen starts black
	false,                                      -- prevent deployment for player
	false,                                      	-- prevent deployment for ai
	function() gb:start_generated_cutscene(gc) end, 	-- intro cutscene function
	false                                      	-- debug mode
);


gc:add_element(nil, nil, "gc_medium_absolute_warpstone_mine_01", 1000, false, false, false);
gc:add_element("Play_dlc09_qb_skv_tretch_craventail_lucky_skullhelm_stage_5_intro_01", "dlc09_qb_skv_tretch_craventail_lucky_skullhelm_stage_5_intro_01", nil, 5000, false, false, false);
gc:add_element(nil, nil, "gc_slow_enemy_army_pan_front_left_to_front_right_far_high_01", 6500, false, false, false);
gc:add_element("Play_wh2_dlc09_qb_skv_tretch_craventail_final_battle_pt_04", "wh2_dlc09_qb_skv_tretch_craventail_final_battle_pt_04", "gc_orbit_ccw_90_medium_commander_front_close_low_01", 6000, false, false, false);
gc:add_element(nil,nil, nil, 3000, true, true, false);


gb:set_cutscene_during_deployment(true);

---------------------------
----HARD SCRIPT VERSION----
---------------------------
gb:set_objective_on_message("deployment_started", "wh_main_qb_objective_attack_defeat_army");
gb:queue_help_on_message("spawn_reinforcements", "vco_tretch_custom_quest_message_chaos_dwarf_reinforcements");


-------ARMY SETUP-------
ga_ai_lahmians = gb:get_army(gb:get_non_player_alliance_num(), 1);
ga_ai_chaos_dwarfs = gb:get_army(gb:get_non_player_alliance_num(), 2);







-------INITIAL ATTACK-------
ga_ai_lahmians:attack_on_message("deployment_started",2000);


-------CHAOS DWARF SURPRISE-------
ga_ai_lahmians:message_on_casualties("spawn_reinforcements", 0.2);
ga_ai_chaos_dwarfs:reinforce_on_message("spawn_reinforcements");
ga_ai_chaos_dwarfs:attack_on_message("spawn_reinforcements",5000);

