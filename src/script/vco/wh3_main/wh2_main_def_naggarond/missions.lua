local missions = {
    [[
         mission
        {
            victory_type vco_victory_type_alternative_1_unification;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 10;
					province wh2_main_ironfrost_glacier;
					province wh2_main_the_chill_road;
					province wh2_main_the_road_of_skulls;
					province wh2_main_the_black_flood;
					province wh2_main_deadwood;
					province wh2_main_aghol_wastelands;
					province wh2_main_the_broken_land;
					province wh2_main_the_clawed_coast;
					province wh2_main_iron_mountains;
					province wh2_main_obsidian_peaks;
					province wh2_main_blackspine_mountains;
					province wh2_main_doom_glades;
					province wh2_main_the_black_coast;
					province wh2_main_titan_peaks;
				}

                payload
                {
                    game_victory;
                }
            }
        }
    ]],
    [[
         mission
        {
            victory_type vco_victory_type_alternative_2_conquest;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type CONTROL_N_PROVINCES_INCLUDING;
					total 14;
					override_text mission_text_text_wh2_main_objective_override_malekith_control;
					province wh2_main_eataine;
					province wh2_main_yvresse;
					province wh2_main_saphery;
					province wh2_main_cothique;
					province wh2_main_avelorn;
					province wh2_main_chrace;
					province wh2_main_nagarythe;
					province wh2_main_ellyrion;
					province wh2_main_tiranoc;
					province wh2_main_caledor;
					province wh2_main_eagle_gate;
					province wh2_main_griffon_gate;
					province wh2_main_unicorn_gate;
					province wh2_main_phoenix_gate;
				}

                payload
                {
                    game_victory;
                }
            }
        }
    ]],
    [[
         mission
        {
            victory_type vco_victory_type_alternative_3_naval_supremacy;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type HAVE_N_AGENTS_OF_TYPE;
					total 5;
					agent_subtype wh2_main_def_black_ark;
				}

				objective
				{
					type CAPTURE_X_BATTLE_CAPTIVES;
					total 15000;
				}

                payload
                {
                    game_victory;
                }
            }
        }
    ]]
};

return missions;
