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

					faction wh_dlc08_nor_norsca;

					faction wh_main_ksl_kislev;

					confederation_valid;
				}

                objective
				{
					type CONTROL_N_REGIONS_FROM;
					total 2;

					region wh_main_southern_oblast_kislev;
					region wh_main_troll_country_erengrad;
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
					override_text mission_text_text_mis_activity_attain_chaos_god_favour;
                    type SCRIPTED;
                    script_key attain_chaos_god_favour;
				}

				objective
				{
					override_text mission_text_text_mis_activity_defeat_chaos_gods_challengers;
                    type SCRIPTED;
                    script_key defeat_chaos_gods_challengers;
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
