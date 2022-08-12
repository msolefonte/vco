local missions = {
    [[
 		mission
		{
			victory_type vco_victory_type_alternative_1_destruction;
			key wh_main_long_victory;
			issuer CLAN_ELDERS;
			primary_objectives_and_payload
			{
				objective
				{
					type DESTROY_FACTION;

					faction wh2_dlc09_tmb_khemri;
					faction wh2_dlc09_tmb_numas;
					faction wh2_dlc09_tmb_rakaph_dynasty;
					faction wh2_dlc09_tmb_the_sentinels;

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
					type DESTROY_FACTION;

					faction wh_main_grn_scabby_eye;
					faction wh_main_grn_teef_snatchaz;
					faction wh_main_grn_orcs_of_the_bloody_hand;
					faction wh_main_grn_top_knotz;

					faction wh2_main_vmp_strygos_empire;

					confederation_valid;
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
