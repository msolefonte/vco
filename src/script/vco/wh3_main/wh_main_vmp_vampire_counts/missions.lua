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
					total 12;
				}

				objective
				{
					type DESTROY_FACTION;
					faction wh_main_vmp_schwartzhafen;

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
					type CONSTRUCT_N_BUILDINGS_FROM;
					faction wh_main_vmp_vampire_counts;
					total 2;

					building_level wh2_dlc09_special_settlement_pyramid_of_nagash_vmp_5;
					building_level wh2_main_special_pyramid_of_nagash_vmp;
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
