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

                    faction wh_main_emp_ostland;
					faction wh_main_emp_ostermark;

					faction wh_main_ksl_kislev;

					faction wh_main_dwf_karak_kadrin;

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
			victory_type vco_victory_type_alternative_2_destruction;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type LOOT_OR_SACK_N_DIFFERENT_SETTLEMENTS_INCLUDING;
					total 25;
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
