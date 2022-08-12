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

					faction wh_main_grn_black_venom;
					faction wh_main_grn_bloody_spearz;
					faction wh_main_grn_broken_nose;
					faction wh_main_grn_crooked_moon;
					faction wh_main_grn_necksnappers;
					faction wh_main_grn_orcs_of_the_bloody_hand;
					faction wh_main_grn_red_eye;
					faction wh_main_grn_red_fangs;
					faction wh_main_grn_scabby_eye;
					faction wh_main_grn_skullsmasherz;
					faction wh_main_grn_teef_snatchaz;
					faction wh_main_grn_top_knotz;

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
					type LOOT_OR_SACK_N_DIFFERENT_SETTLEMENTS_INCLUDING;
					total 35;
                    region wh_main_the_silver_road_karaz_a_karak;
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
