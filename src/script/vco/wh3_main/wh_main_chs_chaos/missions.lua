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
					type RAZE_OR_SACK_N_DIFFERENT_SETTLEMENTS_INCLUDING;
					total 40;
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
					type RAZE_OR_SACK_N_DIFFERENT_SETTLEMENTS_INCLUDING;
					total 4;

					region wh2_main_isthmus_of_lustria_fallen_gates;
					region wh_main_middenland_middenheim;
					region wh2_main_eataine_shrine_of_asuryan;
					region wh2_main_deadwood_the_frozen_city;
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
