local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
                objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc11_cst_pirates_of_sartosa;
					faction wh2_dlc11_cst_vampire_coast;
					faction wh2_dlc11_cst_noctilus;
					faction wh2_dlc11_cst_the_drowned;

					faction wh2_dlc11_def_the_blessed_dread;
					faction wh2_twa03_def_rakarth;

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
			victory_type vco_victory_type_alternative_2;
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
			victory_type vco_victory_type_alternative_3;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					override_text mission_text_text_mis_activity_win_errantry_war;
                    type SCRIPTED;
                    script_key win_errantry_war;
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
