local missions = {
    [[
        mission
        {
            victory_type vco_victory_type_alternative_1_threat_elimination;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type DESTROY_FACTION;

					faction wh2_main_def_bleak_holds;
					faction wh2_main_def_clar_karond;
					faction wh2_main_def_cult_of_pleasure;
					faction wh2_main_def_ssildra_tor;

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
            victory_type vco_victory_type_alternative_2_commerce;
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
    ]],
    [[
        mission
        {
            victory_type vco_victory_type_alternative_3_miscellany;
            key wh_main_long_victory;
            issuer CLAN_ELDERS;
            primary_objectives_and_payload
            {
                objective
				{
					type PERFORM_RITUAL;
					ritual_category CRAFTING_RITUAL;
					total 20;
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
