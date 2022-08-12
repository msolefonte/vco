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
					total 14;
					override_text mission_text_text_wh2_main_objective_override_tyrion_control;
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
            victory_type vco_victory_type_alternative_2_threat_elimination;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type DESTROY_FACTION;
					faction wh2_main_def_naggarond;
					faction wh2_main_def_cult_of_pleasure;
					faction wh2_main_def_har_ganeth;
					faction wh2_dlc11_def_the_blessed_dread;
					confederation_valid;
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
            victory_type vco_victory_type_alternative_3_commerce;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type HAVE_RESOURCES;
					resource res_obsidian;
					resource res_dyes;
					resource res_animals;
					resource res_rom_furs;
					resource res_gems;
					resource res_gold_idols;
					resource res_rom_iron;
					resource res_rom_marble;
					resource res_medicine;
					resource res_rom_textiles;
					resource res_rom_lead;
					resource res_spices;
					resource res_rom_timber;
					resource res_rom_wine;
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
