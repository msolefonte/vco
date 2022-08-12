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
                    type CONTROL_N_PROVINCES_INCLUDING;
                    total 7;

                    province wh_main_bastonne_et_montfort;
                    province wh_main_bordeleaux_et_aquitaine;
                    province wh_main_carcassone_et_brionne;
                    province wh_main_couronne_et_languille;
                    province wh_main_forest_of_arden;
                    province wh_main_lyonesse;
                    province wh_main_parravon_et_quenelles;
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
					type DESTROY_FACTION;

					faction wh_main_vmp_mousillon;
					faction wh2_dlc11_vmp_the_barrow_legion;

                    faction wh_dlc08_nor_vanaheimlings;
					faction wh_dlc08_nor_wintertooth;
					faction wh_dlc08_nor_norsca;

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
